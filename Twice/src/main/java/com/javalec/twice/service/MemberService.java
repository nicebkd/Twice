package com.javalec.twice.service;

import com.javalec.twice.model.MemberVO;

public interface MemberService {
	
	public void joinMember(MemberVO vo);
	public int idcheck(String userid);
}
