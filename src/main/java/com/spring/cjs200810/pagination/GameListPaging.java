package com.spring.cjs200810.pagination;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.service.GameListService;

@Service
public class GameListPaging {
	
	@Autowired
	GameListService gService;
	
	
	public int limit=20;
	public int listLimit=5;
	
	
	public int getTotal() {
		return gService.countGameList();
	}
	public int getPageSize() {
		int pageSize = this.getTotal()%limit==0?this.getTotal()/limit:(this.getTotal()/limit)+1;
		return pageSize;
	}
	
	public int getBlockSize() {
		int block = this.getTotal()%(limit*listLimit)==0?this.getTotal()/(limit*listLimit):(this.getTotal()/(limit*listLimit))+1;
		return block; 
	}
	
}
