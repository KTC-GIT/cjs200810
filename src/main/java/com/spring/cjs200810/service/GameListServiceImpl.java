package com.spring.cjs200810.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.GameListDao;
import com.spring.cjs200810.vo.GameListVo;

@Service
public class GameListServiceImpl implements GameListService {
	@Autowired
	GameListDao gDao;
	
	
	@Override
	public List<GameListVo> selectGameList(int sPage,int limit) {
		
		return gDao.selectGameList(sPage,limit);
	}


	@Override
	public int countGameList() {
		
		return gDao.countGameList();
	}

}
