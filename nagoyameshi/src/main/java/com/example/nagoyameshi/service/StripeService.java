package com.example.nagoyameshi.service;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.example.nagoyameshi.entity.Member;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Event;
import com.stripe.model.StripeObject;
import com.stripe.model.checkout.Session;
import com.stripe.param.checkout.SessionCreateParams;
import com.stripe.param.checkout.SessionRetrieveParams;

import jakarta.servlet.http.HttpServletRequest;
@Service
public class StripeService {
	@Value("${stripe.api-key}")
    private String stripeApiKey;
	private final MemberService memberService;
    
    public StripeService(MemberService memberService) {
        this.memberService = memberService;
    }  
  
    public String createStripeSession(HttpServletRequest httpServletRequest,Member member) {
   	 String memberId = (member != null && member.getId() != null) ? String.valueOf(member.getId()) : "null";
   	 Stripe.apiKey = stripeApiKey;
     String requestUrl = new String(httpServletRequest.getRequestURL());


        
	 SessionCreateParams params = SessionCreateParams.builder()
                
                .setMode(SessionCreateParams.Mode.SUBSCRIPTION)
                .setSuccessUrl(requestUrl.replaceAll("/subscription/create", "") + "/login?reserved")
                .addLineItem(
          		      SessionCreateParams.LineItem.builder()
          		        .setPrice("price_1Pe3evDj1UaUVpmtBapEuo2m")
          		        .setQuantity(1L)
          		        .build()
          		    )
                .putMetadata("memberId", memberId)
                .putMetadata("roleName", "ROLE_PAID_MEMBER")
          		 
          		    .build();
        try {
            Session session = Session.create(params);
            return session.getId();
        } catch (StripeException e) {
            e.printStackTrace();
            return "";
        }
    } 
    public void processSessionCompleted(Event event) {
   	    Optional<StripeObject> optionalStripeObject = event.getDataObjectDeserializer().getObject();
   	    optionalStripeObject.ifPresent(stripeObject -> {
   	     
   	Session session = (Session) stripeObject;

   	        

   	 
   	if (session.getPaymentIntent() != null) {
   	            
   	            
   	            
   	SessionRetrieveParams params = SessionRetrieveParams.builder().addExpand("payment_intent").build();

   	            try {
   	                session = Session.retrieve(session.getId(), params, null);
   	                Map<String, String> paymentIntentObject = session.getPaymentIntentObject().getMetadata();
   	                memberService.updateRole(paymentIntentObject);
   	            } 
   	catch (StripeException e) {
   	                e.printStackTrace();
   	            }
   	        } 
   	               
   	else {
   	            // Payment intent is null, directly use metadata from the session
   	            Map<String, String> metadata = session.getMetadata();
   	            memberService.updateRole(metadata);
   	        }
   	    });
   	}
}
