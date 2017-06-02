package com.javalec.twice.dao.member;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.twice.model.member.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public void joinMember(MemberVO vo) {
		
		sqlSession.insert("member.join",vo);
	}

	@Override
	public int idcheck(String userid) {
		
		return sqlSession.selectOne("member.idcheck",userid);
	}

	@Override
	public MemberVO login(String userid, String userpw) {
		
		MemberVO dto = new MemberVO();
		Map<String,String> map=new HashMap<String,String>(); 
		map.put("userid",userid);
		map.put("userpw",userpw);
		
		dto = (MemberVO) sqlSession.selectOne("member.login",map);
	
		return dto;
	}
	
}
