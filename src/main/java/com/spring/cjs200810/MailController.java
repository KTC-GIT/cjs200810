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
		System.out.println("메일쪽으로 들어옴");
		
		String fromMail = "ktc12d@gmail.com";
		String title =  "새 Review R 계정 이메일 인증";
		
		StringBuffer content = new StringBuffer();
		content.append("<html>");
		content.append("<link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>");
		content.append("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato'>");
		content.append("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>");
		content.append("<style>");
		content.append("#content{max-width:800px;background:#5a5a5a;}");
		content.append("#space{padding-bottom:100px;}");
		content.append("</style>");
		content.append("<body>");
		content.append("<div class='w3-content' id='content'>");
		content.append("<h2>안녕하세요</h2>");
		content.append("<h3>이메일 인증을 위해 아래 이메일 인증하기를 클릭해주세요</h3>");
		content.append("<div><a href='localhost:9090/cjs200810/member/authCheck?creationid="+creationid+"&authkey="+authkey+"' target='_blank'><button class='w3-button w3-wide w3-blue'>이메일 인증하기</button></a></div>");
		content.append("<div id='space'></div>");
		content.append("<p>**만약 회원가입을 위해 이메일 인증을 신청하신 적이 없으시다면 본 메일은 무시해주세요</p>");
		content.append("</div>");
		content.append("</body>");
		content.append("</html>");
		
		MimeMessage message = jms.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
		
		messageHelper.setFrom(fromMail);
		messageHelper.setTo(email);
		messageHelper.setSubject(title);
		messageHelper.setText(content.toString());
		
		jms.send(message);
		
		RequestDispatcher rd = request.getRequestDispatcher("/msg/joinOk");
		rd.forward(request, response);
		
	}
}
