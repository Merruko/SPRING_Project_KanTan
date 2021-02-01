<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	nav{margin-top: 30px; text-align: center; margin-right:30px;}
	nav ul{list-style-type: none;}
	nav ul li{display: inline; padding: 10px 15px; margin-right: 20px;}
	nav ul li a{text-decoration: none; color: black;}
</style>

<nav>
	<ul>
		<li><a href="k_index.jsp">홈</a>
		<li><a href="login.do">로그인</a>
		<li><a href="getBoardList.do">공지사항</a>
		<li><a href="k_mypage.jsp">마이페이지</a>
		<li><a href="logout.do">${userName }님 로그아웃</a>
	</ul>
</nav>