package com.javalec.twice.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.twice.dao.member.MemberDAOImpl;
import com.javalec.twice.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	MemberDAOImpl memberDao;

	@Override
	public void joinMember(MemberVO vo) {
		
		memberDao.joinMember(vo);
	}

	@Override
	public int idcheck(String userid) {
		return memberDao.idcheck(userid);
	}

}
