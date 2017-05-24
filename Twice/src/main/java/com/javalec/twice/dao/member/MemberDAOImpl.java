package com.javalec.twice.dao.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.twice.model.MemberVO;

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
	
}
