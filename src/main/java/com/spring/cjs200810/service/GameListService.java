package com.spring.cjs200810.service;

import java.util.List;

import com.spring.cjs200810.vo.GameListVo;

public interface GameListService {

	public List<GameListVo> selectGameList(int sPage,int limit);

	public int countGameList();

}
