<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="message.user.login.title"/></title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	h1{padding: 20px 0; font-weight: bold; text-align: center;}
	input[type="text"], [type="password"]{width: 200px; height: 20px;}
</style>
</head>
<body>
	<jsp:include page="k_menu.jsp" />
	<center><h1>로그인</h1></center>
	<div id="container">
		<form action="login.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td><spring:message code="message.user.login.id"/></td>
					<td><input type="text" name="id" value="${user.id }" /></td>
				</tr>
				<tr>
					<td><spring:message code="message.user.login.password"/>
					<td><input type="password" name="password" value="${user.password }"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="<spring:message code="message.user.login.loginBtn"/>"/>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="k_footer.jsp" />
</body>
</html>