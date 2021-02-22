package com.spring.cjs200810;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String loginPost(@RequestParam String id,@RequestParam String pw, HttpServletRequest request) throws ServletException,IOException{
		MemberVo vo = new MemberVo();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		String location = "";
		
		vo = mService.selectById(id);
		if(passwordEncoder.matches(pw, vo.getPw())) {
			if(vo.getAuthStatus()==1) {
				if(vo.getActivation()==1) {
					location = "redirect:/msg/loginSuccess";
					session.setAttribute("id", id);
					session.setAttribute("nick", vo.getNick());
					session.setAttribute("level", vo.getLevel());
					session.setAttribute("lastLogin", vo.getLastLogin());
					
					mService.updateLastLogin(id);
				}
				else {
					location = "redirect:/msg/idStopped";
				}
				
			}
			else {
				location = "redirect:/msg/requiredEmailAuth";
			}
		}
		else {
			location = "redirect:/msg/loginFailed";
		}
		
		
		return location;
	}
	
	@RequestMapping("/logout")
	public String logoutGet(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect:/msg/logout";
	}
	
	@RequestMapping("/join")
	public String joinGet() {
		return "member/createAccount";
	}
	
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String joinPost(MemberVo vo,RedirectAttributes redirectAttr) {
		
		int count = mService.countById(vo.getId());
		
		if(count==0) {
			
			UUID uuid = UUID.randomUUID();
			String authkey = uuid.toString();
			vo.setAuthkey(authkey);
			
			String pw = passwordEncoder.encode(vo.getPw());
			vo.setPw(pw);
			
			mService.insertMember(vo);
			int creationid = mService.selectIdxDesc();
			String tagNick = vo.getNick()+"#"+creationid;
			mService.updateNick(tagNick,vo.getId());
			redirectAttr.addAttribute("email",vo.getEmail());
			redirectAttr.addAttribute("authkey", vo.getAuthkey());
			redirectAttr.addAttribute("creationid", creationid);
			
			return "redirect:/mail/sendAuthentificationMail";
		}
		else {
			return "redirect:/msg/idDuplicated";
		}
	}
	
	@RequestMapping("/authCheck")
	public String authCheckGet(@RequestParam String creationid, @RequestParam String authkey) {
		String location="";
		
		int count = mService.countByIdxAndAuthkey(creationid,authkey);
		
		if(count==1) {
			mService.updateAuthStatus(creationid,authkey);
			location = "member/authSuccess";
			System.out.println("인증성공");
		}
		else {
			location = "member/authFailed";
			System.out.println("인증실패");
		}
		
		return location;
	}
	
	@RequestMapping("/mypage")
	public String mypageGet() {
		
		return "member/mypage";
	}
	
	
}
