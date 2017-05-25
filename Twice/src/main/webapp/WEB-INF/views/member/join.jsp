<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="../include/header.jsp" %>
<script>
$(document).ready(function(){
	
	
	$("#userid").blur(function() {
		var re_id = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var userid=$("#userid").val();
 		var param ="userid="+userid; 
 		if(re_id.test(userid)!=true){
 			$("#idcheck").html('<span style="color:red">유효한 아이디가 아닙니다.[이메일 형식]</span>');
 			$("#userid").focus();
 			return;
 		}
		
 		$.ajax({
			type: "post",
			url: "${path}/member/idcheck.do",
			data: param,
			success: function(data) {
				
				if(data=="success"){
					$("#idcheck").html('<span style="color:red">이미 아이디가 존재합니다.</span>');
					$("#userid").focus();
				}else{
					$("#idcheck").html('<span style="color:blue">사용 가능한 아이디 입니다.</span>');	
				}
				
			} 
		}); 
	});
	
	$("#userpw").blur(function() {
		var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
		var userpw = $("#userpw").val();
		
 		if(re_pw.test(userpw)!=true){
 			$("#pwcheck").html('<span style="color:red">유효한 비밀번호가 아닙니다.6자이상 영문 숫자</span>');
 			$("#pwcheck").focus();
 		}else{
 			$("#pwcheck").html('<span style="color:blue">OK</span>');
 		}
	});	
});
</script>
</head>
<body>
<%@include file="../include/menu.jsp" %>
<br><br><br>
<div class="container-fluid">
	<div class="row">
    <div class="col-md-8">
        <h1 class="entry-title"><span>Sign Up</span> </h1>
        <hr>
            <form class="form-horizontal" method="post" name="signup" id="signup" name="form1" action="${path}/member/join.do">        
        <div class="form-group" >
          <label class="control-label col-sm-3">Email ID <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" class="form-control" name="userid" id="userid" placeholder="Enter your Email ID" value="">    
            </div>
             <div id="idcheck"></div>
            </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Set Password <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="userpw" id="userpw" placeholder="Choose password (5-15 chars)" value="">
           </div> 
           <div id="pwcheck"></div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">Confirm Password <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" id="userpw2" placeholder="Confirm your password" value="">
            </div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">Nick Name <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="username" id="username" placeholder="Enter your Name here" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">Gender <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <label>
            <input name="gender" type="radio" value="M" checked>
            Male </label>
               
            <label>
            <input name="gender" type="radio" value="F" >
            Female </label>
          </div>
        </div>
 <!--        <div class="form-group">
          <label class="control-label col-sm-3">Profile Photo <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
            </div>
          </div>
        </div> -->
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input id="joinBtn" type="button" value="Sign Up" class="btn btn-primary">
          </div>
        </div>
      </form>
    </div>
</div>
</div>
</body>
</html>