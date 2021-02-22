package com.spring.cjs200810;


import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/mail")
public class MailController {
	@Autowired
	JavaMailSender jms;
	
	@RequestMapping("/sendAuthentificationMail")
	public void sendAuthentificationMail(@RequestParam String email,@RequestParam String authkey,@RequestParam String creationid, HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		String fromMail = "ktc12d@gmail.com";
		String title =  "새 Review R 계정 이메일 인증";
		
		StringBuffer content = new StringBuffer();
		content.append("<!DOCTYPE html>");
		content.append("<html lang=\"ko\">");
		content.append("<head><meta charset=\"UTF-8\">");
		content.append("</head>");
		content.append("<body>");
		content.append("<table style=\"background-color:#5a5a5a;color:#aaaaaa;width:800px;margin-left:auto;margin-right:auto;text-align:center\">");
		content.append("<tr><td><h1>안녕하세요</h1></td></tr>");
		content.append("<tr><td><h2>이메일 인증을 위해 아래 이메일 인증하기를 클릭해주세요</h2></td></tr>");
		content.append("<tr><td style=\"padding-bottom:30px;\"></td></tr>");
		content.append("<tr><td style=\"padding-left:20px;\"><a href=\"http://218.236.203.87:9090/cjs200810/member/authCheck?creationid="+creationid+"&authkey="+authkey+"\" target=\"_blank\"><button style=\"width:150px;height:50px;background-color:#1478FF;color:white;border:0;border-bottom:3px solid #0064FF;font-size:17px;outline:0;border-radius:3px;\">이메일 인증하기</button></a></td></tr>");
		content.append("<tr><td style=\"padding-bottom:50px;\"></td></tr>");
		content.append("<tr><td><h3>**만약 회원가입을 위해 이메일 인증을 신청하신 적이 없으시다면 본 메일은 무시해주세요</h3></td></tr>");
		content.append("<tr><td style=\"padding-bottom:50px;\"></td></tr>");
		content.append("</table>");
		content.append("</body>");
		content.append("</html>");
		
		MimeMessage message = jms.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
		
		messageHelper.setFrom(fromMail);
		messageHelper.setTo(email);
		messageHelper.setSubject(title);
		messageHelper.setText(content.toString(),true);
		jms.send(message);
		RequestDispatcher rd = request.getRequestDispatcher("/msg/joinOk");
		rd.forward(request, response);
		
	}
}
