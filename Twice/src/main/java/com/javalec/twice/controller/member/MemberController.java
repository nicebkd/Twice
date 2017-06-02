package com.javalec.twice.controller.member;

import java.io.IOException;
import java.io.Writer;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.twice.model.member.MemberVO;
import com.javalec.twice.service.member.MemberServiceImpl;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	 
	
	@Inject
	MemberServiceImpl memberService;
	
	
	@RequestMapping("joinView.do")
	public String joinView(){
		
		return "member/join";
	}
	
	@RequestMapping("join.do")
	public String join(@ModelAttribute MemberVO vo){
		memberService.joinMember(vo);
		
		return "home";		
	}
	
	@RequestMapping("idcheck.do")
	public void idcheck(String userid,Model model,Writer wr){
		System.out.println("idcheck" + userid);
		int count = memberService.idcheck(userid);
		System.out.println("count =" + count);
		if(count ==1){
			try {
				wr.write("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping("login.do")
	public void login(String userid,String userpw,Writer wr,HttpSession session) throws IOException{
		
		MemberVO dto = new MemberVO();
		dto = memberService.login(userid, userpw);
				
		if(dto ==null){
			wr.write("fail");
		}else{
			wr.write("success");
			session.setAttribute("dto",dto);
		}

	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		
		memberService.logout(session);
		
		return "home";
	}
	

}
