package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	@RequestMapping("/sendAuthentificationMail")
	public String sendAuthentificationMail() {
		
		
		return "message/waitAuthentification";
	}
}
