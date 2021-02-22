package com.spring.cjs200810.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.MemberVo;

public interface MemberDao {

	public void insertMember(@Param("vo") MemberVo vo);

	public int selectIdxDesc();

	public int countByIdxAndAuthkey(@Param("idx") String creationid,@Param("authkey") String authkey);

	public void updateAuthStatus(@Param("idx") String creationid,@Param("authkey") String authkey);

	public MemberVo selectById(@Param("id") String id);

	public void updateLastLogin(@Param("id") String id);

	public int countById(@Param("id") String id);

	public void updateNick(@Param("tagNick") String tagNick,@Param("id") String id);


}
