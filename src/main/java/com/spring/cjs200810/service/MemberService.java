package com.spring.cjs200810.service;

import com.spring.cjs200810.vo.MemberVo;

public interface MemberService {

	public void insertMember(MemberVo vo);

	public int selectIdxDesc();

	public int countByIdxAndAuthkey(String creationid, String authkey);

	public void updateAuthStatus(String creationid, String authkey);

	public MemberVo selectById(String id);

	public void updateLastLogin(String id);

	public int countById(String id);


}
