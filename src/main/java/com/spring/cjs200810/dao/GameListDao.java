package com.spring.cjs200810.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.GameListVo;

public interface GameListDao {


	public List<GameListVo> selectGameList(@Param("sPage") int sPage,@Param("limit") int limit);

	public int countGameList();

}
