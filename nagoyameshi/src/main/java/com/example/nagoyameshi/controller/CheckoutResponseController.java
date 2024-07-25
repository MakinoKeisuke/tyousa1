package com.example.nagoyameshi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.nagoyameshi.repository.ShopeRepository;

@Controller
public class CheckoutResponseController {
	private final ShopeRepository shopeRepository;
	
	public  CheckoutResponseController(ShopeRepository shopeRepository) {
		this.shopeRepository = shopeRepository;
	}
	@GetMapping("/subscription/success")
	public String subscription(Model model) {
		
		
		return "subscription/success";
	}
}
