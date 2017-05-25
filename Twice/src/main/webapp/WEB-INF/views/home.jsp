<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="include/header.jsp"%>
<title>Twice</title>
<script>
$(document).ready(function() {
	$("#loginBtn").click(function() {
		var userid = $("#userid2").val();
		var userpw = $("#userpw2").val();

		if(userid==""){
			alert("아이디를 입력해주세요.");
			$("#userid2").focus();
			return;
		}else if(userpw==""){
			alert("비밀번호를 입력해주세요.");
			$("#userpw2").focus();
			return;
		}
		
		/* document.form1.action="${path}/member/login_check.do";
		document.form1.submit();
		 */
		
 		var param = "userid="+userid+"&userpw="+userpw;
		 
		$.ajax({
			type:"post",
			url:"${path}/member/login.do",
			data : param,
			success : function(data){
				if(data=="success"){
					location.href="${path}"
				}else{
					$("#loginCheck").html('<span style="color:red">아이디 및 패스워드가 일치 하지 않습니다.</span>');	
				}
			}
		}); 
	});
});
</script>
</head>
<body>
<body>
	<%@include file="include/menu.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8" id="content">
			<section>
  <div class="container">
        <div id="carousel">
       		<figure><img src="<c:url value="/resources/images/tt1.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt2.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt3.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt4.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt5.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt6.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt7.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt8.png" />"alt=""></figure>
			<figure><img src="<c:url value="/resources/images/tt9.png" />"alt=""></figure>
		<!-- 	<figure><img src="http://lorempixel.com/186/116/people/9" alt=""></figure> -->
		</div>
	</div>
				</section>
			</div>
			<div class="col-md-3" id="side"></div>
		</div>
	</div>
	<%@include file="include/footer.jsp" %>
</body>
</html>