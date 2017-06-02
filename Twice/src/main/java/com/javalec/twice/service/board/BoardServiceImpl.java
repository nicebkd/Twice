package com.javalec.twice.service.board;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.twice.dao.board.BoardDAO;

@Service
public class BoardServiceImpl {

	@Inject
	BoardDAO boardDAO;
	
	
}
