<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <!-- css -->
  <!-- 로그인 -->
  <link href="<c:url value="/resources/css/joinview.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/3dimages.css" />" rel="stylesheet">
  
  <style type="text/css">
/*  div {
	border: 1px solid black;
}
  */
.nav {
	padding-right: 15px;
}

#content {
	margin-top : 55px;
	margin-left: 50px;
	padding: 0px;
	height: 800px;
}

#side {
	margin-top : 55px;
	margin-right: 50px;
	padding: 10px;
	height: 800px;
}

#contentimage{
	margin: 0px;
	padding: 0px;
}

#footer{
	height: 100px;
	text-align: center;
	line-height: 80px;
	border: 1px solid black;
}
</style>