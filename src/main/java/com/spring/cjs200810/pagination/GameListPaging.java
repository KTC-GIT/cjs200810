package com.spring.cjs200810.pagination;

import com.spring.cjs200810.service.GameListService;

public class GameListPaging {
	public int limit=10;
	public int listLimit=5;
	
	GameListService gService;
	
	
	public int getTotal() {
		return gService.countGameList();
	}
	
	public int setBlockSize() {
		
		return 0; 
	}
}
