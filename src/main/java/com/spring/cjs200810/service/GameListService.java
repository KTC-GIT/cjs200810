package com.spring.cjs200810.service;

import com.spring.cjs200810.vo.GameListVo;

public interface GameListService {

	public GameListVo selectGameList(int sPage,int limit);

	public int countGameList();

}
