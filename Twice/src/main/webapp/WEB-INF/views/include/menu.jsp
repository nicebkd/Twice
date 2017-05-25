<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../member/modal/login-modal.jsp" %>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
      <a class="navbar-brand" href="${path }" style="color: pink">TWICE</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">5월23일 시작</a></li>
    </ul>
    <c:if test="${dto == null }">
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${path}/member/joinView.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
     </c:if>
     
     <c:if test="${dto != null }">
   	 <ul class="nav navbar-nav navbar-right">
        <li><a href="#">${dto.userid}</a></li>
        <li><a href="${path }/member/logout.do"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
     </c:if>
</nav>