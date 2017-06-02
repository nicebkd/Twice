package com.javalec.twice.service.member;

import javax.servlet.http.HttpSession;

import com.javalec.twice.model.member.MemberVO;

public interface MemberService {
	
	public void joinMember(MemberVO vo);
	public int idcheck(String userid);
	public MemberVO login(String userid,String userpw);
	public void logout(HttpSession session);
}
