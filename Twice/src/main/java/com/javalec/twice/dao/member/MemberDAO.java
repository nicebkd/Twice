package com.javalec.twice.dao.member;

import com.javalec.twice.model.member.MemberVO;

public interface MemberDAO {
	
	public void joinMember(MemberVO vo);
	public int idcheck(String userid);
	public MemberVO login(String userid,String userpw);
	
	

}
