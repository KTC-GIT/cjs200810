package com.spring.cjs200810;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.cjs200810.service.GameListImgService;
import com.spring.cjs200810.service.GameListService;
import com.spring.cjs200810.vo.GameListVo;

@Controller
@RequestMapping("/gameList")
public class GameListController {
	@Autowired
	GameListService gService;
	@Autowired
	GameListImgService gImgService;
	
	@RequestMapping("/main")
	public String mainGet(@RequestParam String startPage, Model model) {
		if(startPage==null){
			startPage="0";
		}
		int sPage = Integer.parseInt(startPage);
		int limit = 10;
		GameListVo vo = gService.selectGameList(sPage,limit);
		
		model.addAttribute("vo", vo);
		
		return "gameList/main";
	}
}
