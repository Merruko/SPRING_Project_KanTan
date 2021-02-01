<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>InterClass</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 800px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid gray; padding: 10px;}
	h1{padding: 20px 0; font-weight: bold; text-align: center;}
	input[type="text"]{width: 100%; height: 20px;}
	textarea{width: 100%; height: 300px;}
</style>
</head>
<body>
	<jsp:include page="k_menu.jsp" />
	<h1>글 작성</h1>
	<div id="container">
		<form action="insertBoard.do" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td><input type="text" name="title" placeholder="제목"></td>
				</tr>
				<tr>
					<td><input type="text" name="writer" value="${userName }" readonly></td>
				</tr>
				<tr>
					<td><textarea name="content" placeholder="내용"></textarea></td>
				</tr>

				<tr>
					<td>
					<input type="submit" value="등록">
					<input type="button" value="뒤로" onclick="location.href='getBoardList.do'">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="k_footer.jsp" />
</body>
</html>