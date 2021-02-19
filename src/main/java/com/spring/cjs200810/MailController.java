package com.spring.cjs200810;

import java.util.UUID;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mail")
public class MailController {
	@Autowired
	JavaMailSender jms;
	
	
	@RequestMapping("/sendAuthentificationMail")
	@ResponseBody
	public void sendAuthentificationMail(@RequestParam String email) throws Exception{
		System.out.println("메일쪽으로 들어옴");
		
		String fromMail = "ktc12d@gmail.com";
		String title =  "새 Review R 계정 이메일 인증";
		
		UUID uuid = UUID.randomUUID();
		StringBuffer content = new StringBuffer();
		content.append("");
		
		MimeMessage message = jms.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
		
		messageHelper.setFrom(fromMail);
		messageHelper.setTo(email);
		messageHelper.setSubject(title);
		messageHelper.setText(content.toString());
		
		jms.send(message);
	}
}
