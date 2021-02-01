<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InterClass</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 800px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid gray; padding: 10px;}
	h1{padding: 20px 0; font-weight: bold; text-align: center;}
	 .btn{background-color: #1f75d9; border-bottom:5px solid #165195; text-decoration: none; color:white; border-radius: 5px; text-shadow: 0px -2px rgba(0, 0, 0, 0.44);}
</style>
</head>
<body>
	<jsp:include page="k_menu.jsp" />
	<h1><spring:message code="message.board.list.mainTitle"/></h1>
	<div id="container">
		<!-- 목록 -->
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th width="100" height="50">
				<spring:message	code="message.board.list.table.head.seq" /></th>
				<th width="200">
				<spring:message code="message.board.list.table.head.title" /></th>
				<th width="150">
				<spring:message code="message.board.list.table.head.writer" /></th>
				<th width="150">
				<spring:message code="message.board.list.table.head.regDate" /></th>
				<th width="100">
				<spring:message code="message.board.list.table.head.cnt" /></th>
			</tr>
			<c:forEach items="${boardList }" var="board">
				<tr>
					<td>${board.seq }</td>
					<td align="left"><a href="getBoard.do?seq=${board.seq }">
							${board.title }</a></td>
					<td>${board.writer }</td>
					<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd"/></td>
					<td>${board.cnt }</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		
		<!-- 검색 -->
		<form action="getBoardList.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td>
					<select name="searchCondition">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key }
						</c:forEach>							
					</select> 
					<input name="searchKeyword" type="text" /> 
					<input type="submit" value="<spring:message code="message.board.list.search.condition.btn"/>"/>
					<a class="btn" href="k_insertBoard.jsp" class="btn" text-align="left"><spring:message code="message.board.list.link.insertBoard"/></a>
					</td>
				</tr>
			</table>
		</form>
	<jsp:include page="k_footer.jsp" />
</body>
</html>