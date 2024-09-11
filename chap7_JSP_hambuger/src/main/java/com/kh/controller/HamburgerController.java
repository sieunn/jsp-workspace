package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.Hamburger;
import com.kh.service.HamburgerService;

@Controller
public class HamburgerController {

	@Autowired
	private HamburgerService hamburgerService;
	
	@GetMapping("/burger")
	public String getBurger(Model model) {
		List<Hamburger> burgers = hamburgerService.getAllBurgers();
		model.addAttribute(burgers);
		return "hamburgerList";
	}
	
	@PostMapping("/addBurger")
	public String addBurger(Hamburger burger) {
		hamburgerService.addBurger(burger);
		return "redirect:/hamburgerList";
	}
}
