package com.spring.cjs200810;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.cjs200810.service.MemberService;
import com.spring.cjs200810.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	MemberService mService;
	
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
	public String joinPost(MemberVo vo,RedirectAttributes redirectAttr) {
		UUID uuid = UUID.randomUUID();
		String authkey = uuid.toString();
		vo.setAuthkey(authkey);
		
		String pw = passwordEncoder.encode(vo.getPw());
		vo.setPw(pw);
		
		mService.insertMember(vo);
		int creationid = mService.selectIdxDesc();
		
		redirectAttr.addAttribute("email",vo.getEmail());
		redirectAttr.addAttribute("authkey", vo.getAuthkey());
		redirectAttr.addAttribute("creationid", creationid);
		return "redirect:/mail/sendAuthentificationMail";
	}
	
	@RequestMapping("/authCheck")
	public String authCheckGet(@RequestParam String creationid, @RequestParam String authkey) {
		String location="";
		
		int count = mService.countByIdxAndAuthkey(creationid,authkey);
		
		if(count==1) {
			mService.updateAuthStatus(creationid,authkey);
			location = "member/authSuccess";
		}
		else {
			location = "member/authFailed";
		}
		
		return location;
	}
}
