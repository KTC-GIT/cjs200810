package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/msg")
public class MessageController {
	
	@RequestMapping("/{msgflag}")
	public String msgflag(@PathVariable String msgflag,Model model) {
		
		if(msgflag.equals("joinOk")) {
			model.addAttribute("msg", "회원가입이 완료되었습니다");
			model.addAttribute("url", "main");
		}
		
		return "message/message";
	}
}
