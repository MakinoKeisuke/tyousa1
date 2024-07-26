package com.example.nagoyameshi.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.nagoyameshi.entity.Member;
import com.example.nagoyameshi.repository.MemberRepository;
import com.example.nagoyameshi.security.UserDetailsImpl;
import com.example.nagoyameshi.service.MemberService;
@Controller
@RequestMapping("/subscription")
public class SubscriptionController {
	private final MemberRepository memberRepository;
	private final MemberService memberService;
	
	public SubscriptionController(MemberRepository memberRepository, MemberService memberService) {
		this.memberRepository = memberRepository;
		this.memberService = memberService;
	}
	
	@GetMapping("/cancel")
	public String cancel() {
		return "subscription/cancel";
	}
	
	@GetMapping("/create")
	public String createMenyu(@AuthenticationPrincipal UserDetailsImpl userDetailsImpl, Model model, RedirectAttributes redirectAttributes) {
		Member member = memberRepository.getReferenceById(userDetailsImpl.getMember().getId());
		memberService.createSubscription(member);
		
		model.addAttribute("successMessage", "有料会員を登録しました、");
		
		return "subscription/create";
		
	}
	
	@PostMapping("/create")
	public String create(@AuthenticationPrincipal UserDetailsImpl userDetailsImpl, Model model, RedirectAttributes redirectAttributes) {
		Member member = memberRepository.getReferenceById(userDetailsImpl.getMember().getId());
		memberService.createSubscription(member);
		
		redirectAttributes.addFlashAttribute("successMessage", "有料会員を登録しました");
		
		return "redirect:/";
		
	}
	
	@GetMapping("/delete")
	public String deleteMenyu(@AuthenticationPrincipal UserDetailsImpl userDetailsImpl, Model model, RedirectAttributes redirectAttributes) {
		//Member member = memberRepository.getReferenceById(userDetailsImpl.getMember().getId());
		//memberService.cancelSubscription(member);
		
		//model.addAttribute("successMessage", "有料会員を削除しました");
		
		return "subscription/cancel";
	}
	
	@PostMapping("/delete")
	public String delete(@AuthenticationPrincipal UserDetailsImpl userDetailsImpl, Model model, RedirectAttributes redirectAttributes) {
		Member member = memberRepository.getReferenceById(userDetailsImpl.getMember().getId());
		memberService.cancelSubscription(member);
		
		redirectAttributes.addFlashAttribute("successMessage", "有料会員を削除しました");
		
		return "redirect:/";
	}
	

	
}
