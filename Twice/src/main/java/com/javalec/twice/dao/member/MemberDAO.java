package com.javalec.twice.dao.member;

import com.javalec.twice.model.MemberVO;

public interface MemberDAO {
	
	public void joinMember(MemberVO vo);
	public int idcheck(String userid);
	

}
