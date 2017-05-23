package com.javalec.twice.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@RequestMapping("joinView.do")
	public String memberJoin(){
		System.out.println("여기까지 오니?");
		return "member/join";
	}

}
