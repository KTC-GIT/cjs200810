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
			model.addAttribute("msg", "회원가입이 완료되었습니다. 이메일 인증을 해주세요");
			model.addAttribute("url", "main");
		}
		else if(msgflag.equals("loginFailed")) {
			model.addAttribute("msg", "아이디나 비밀번호가 일치하지 않습니다");
			model.addAttribute("url", "member/login");
		}
		else if(msgflag.equals("loginSuccess")) {
			model.addAttribute("msg", "로그인 되었습니다!");
			model.addAttribute("url", "main");
		}
		else if(msgflag.equals("logout")) {
			model.addAttribute("msg", "로그아웃 되었습니다");
			model.addAttribute("url", "main");
		}
		else if(msgflag.equals("requiredEmailAuth")) {
			model.addAttribute("msg", "이메일 인증이 필요합니다");
			model.addAttribute("url", "member/login");
		}
		else if(msgflag.equals("idStopped")) {
			model.addAttribute("msg", "요청에 의해 정지된 아이디입니다.");
			model.addAttribute("url", "main");
		}
		else if(msgflag.equals("idDuplicated")) {
			model.addAttribute("msg", "중복된 아이디입니다.");
			model.addAttribute("url", "member/join");
		}
		
		return "message/message";
	}
}
