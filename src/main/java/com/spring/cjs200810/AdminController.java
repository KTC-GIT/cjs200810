package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/adMain")
	public String adMainGet(Model model) {
		
		return "admin/adMain";
	}
	
	@RequestMapping("/gameList")
	public String gameListGet(Model model) {
		
		return "admin/gameList";
	}
	
	@RequestMapping("/memberList")
	public String memberListGet(Model model) {
		
		return "admin/memberList";
	}

	@RequestMapping("/columnList")
	public String columnListGet(Model model) {
	
		return "admin/columnList";
	}
}
