package com.javalec.twice.dao.board;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	SqlSession sqlSession;
}
