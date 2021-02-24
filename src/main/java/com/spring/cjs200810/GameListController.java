package com.spring.cjs200810;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.cjs200810.pagination.GameListPaging;
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
	@Autowired
	GameListPaging gp;
	
	@RequestMapping("/gMain")
	public String mainGet(Model model,HttpServletRequest request) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		
		int startPage = request.getParameter("startPage")==null?1:Integer.parseInt(request.getParameter("startPage"));
		int block = request.getParameter("block")==null?1:Integer.parseInt(request.getParameter("block"));
		int limit = gp.limit;
		int total = gp.getTotal();
		int blockSize = gp.getBlockSize();
		int pageSize = gp.getPageSize();
		int start = (startPage-1)*limit>total?total:(startPage-1)*limit;
		List<GameListVo> list = gService.selectGameList(start,limit);
		
		model.addAttribute("vo", list);
		model.addAttribute("blockSize", blockSize);
		model.addAttribute("block", block);
		model.addAttribute("pageSize", pageSize);
		
		return "gameList/gMain";
	}
	
	@RequestMapping("/addList")
	public String addListGet() {
		
		return "gameList/addList";
	}
}
