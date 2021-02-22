package com.spring.cjs200810.pagination;

import com.spring.cjs200810.service.GameListService;

public class GameListPaging {
	public int limit=10;
	public int listLimit=5;
	public int total = getTotal();
	public int blockSize = getBlockSize();
	
	GameListService gService;
	
	
	public int getTotal() {
		return gService.countGameList();
	}
	
	public int getBlockSize() {
		int block = total%(limit*listLimit)==0?total/(limit*listLimit):(total/(limit*listLimit))+1;
		return block; 
	}
}
