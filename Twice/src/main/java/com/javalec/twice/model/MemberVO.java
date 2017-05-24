package com.javalec.twice.model;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class MemberVO {

	int userno;
	String userid;
	String userpw;
	String username;
	String gender;
	Date regdate;
	Date updatedate;
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userno=" + userno + ", userid=" + userid + ", userpw=" + userpw + ", username=" + username
				+ ", gender=" + gender + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
	
}
