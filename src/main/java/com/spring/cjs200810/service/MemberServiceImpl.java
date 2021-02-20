package com.spring.cjs200810.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.MemberDao;
import com.spring.cjs200810.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao mDao;
	
	@Override
	public void insertMember(MemberVo vo) {
		mDao.insertMember(vo);
	}

	@Override
	public int selectIdxDesc() {
		
		return mDao.selectIdxDesc();
	}

	@Override
	public int countByIdxAndAuthkey(String creationid, String authkey) {
		
		return mDao.countByIdxAndAuthkey(creationid,authkey);
	}

	@Override
	public void updateAuthStatus(String creationid, String authkey) {
		mDao.updateAuthStatus(creationid,authkey);
		
	}

}
