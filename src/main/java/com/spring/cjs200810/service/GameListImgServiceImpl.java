package com.spring.cjs200810.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.cjs200810.dao.GameListImgDao;
import com.spring.cjs200810.vo.GameListImgVo;

public class GameListImgServiceImpl implements GameListImgService {
	@Autowired
	GameListImgDao gImgDao;
	
	

}
