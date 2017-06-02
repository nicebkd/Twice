package com.javalec.twice.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.javalec.twice.dao.member.MemberDAOImpl;
import com.javalec.twice.model.member.MemberVO;

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

	@Override
	public MemberVO login(String userid, String userpw) {
		
		return memberDao.login(userid, userpw);
	}

	@Override
	public void logout(HttpSession session) {
			session.invalidate();
	}

}
