package com.spring.cjs200810.service;

import com.spring.cjs200810.vo.MemberVo;

public interface MemberService {

	public void insertMember(MemberVo vo);

	public int selectIdxDesc();

	public int countByIdxAndAuthkey(String creationid, String authkey);

	public void updateAuthStatus(String creationid, String authkey);

}
