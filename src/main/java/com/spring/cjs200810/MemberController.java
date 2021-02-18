package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.cjs200810.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@RequestMapping("/login")
	public String loginGet() {
		return "member/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginPost() {
		return "main/main";
	}
	
	@RequestMapping("/join")
	public String joinGet() {
		return "member/createAccount";
	}
	
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String joinPost(@RequestParam String email) {
		
		
		return "redirect:/mail/sendAuthentificationMail";
	}
}
