package com.javalec.twice.service;

import javax.servlet.http.HttpSession;

import com.javalec.twice.model.MemberVO;

public interface MemberService {
	
	public void joinMember(MemberVO vo);
	public int idcheck(String userid);
	public MemberVO login(String userid,String userpw);
	public void logout(HttpSession session);
}
