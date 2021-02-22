package com.spring.cjs200810.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.cjs200810.dao.GameListDao;
import com.spring.cjs200810.vo.GameListVo;

public class GameListServiceImpl implements GameListService {
	@Autowired
	GameListDao gDao;
	
	
	@Override
	public GameListVo selectGameList(int sPage,int limit) {
		
		return gDao.selectGameList(sPage,limit);
	}


	@Override
	public int countGameList() {
		
		return gDao.countGameList();
	}

}
