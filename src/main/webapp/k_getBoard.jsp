<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InterClass</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 130px; width: 100%; font-size: 20px; background: red; line-height: 130px; color: black;}
	table{margin: 0 auto; width: 700px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	h1{padding: 20px 0; font-weight: bold; text-align: center;}
	input[type="text"]{width: 100%; height: 20px;}
	textarea{width: 100%; height: 350px;}
	a{text-decoration: none; color: black;}
	 .btn{background-color: #1f75d9; border-bottom:5px solid #165195; text-decoration: none; color:white; border-radius: 5px; text-shadow: 0px -2px rgba(0, 0, 0, 0.44);}
</style>
</head>
<body>
	<jsp:include page="k_menu.jsp" />
		<h1>글 상세</h1>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td width="70">제목</td>
					<td align="left"><input name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td align="left"><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
				</tr>
				<tr>
					<td>등록일</td>
					<td align="left">${board.regDate }</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td align="left">${board.cnt }</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="수정">
					<input type="button" value="삭제" onclick="location.href='deleteBoard.do?seq=${board.seq }'">
					<input type="button" value="목록" onclick="location.href='getBoardList.do'">
				</tr>
			</table>
		</form>
	<jsp:include page="k_footer.jsp" />
</body>
</html>