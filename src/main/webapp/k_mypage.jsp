<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InterClass</title>
<style type="text/css">
	table{width: 500px; border-collapse: collapse;}
	tr, td{border: 1px solid white; padding: 10px;}
	input[type="text"],[type="password"] {width: 200px; height: 20px;}
	input[type="reset"],[type="submit"] {border: 1px solid #333; border-radius: 5px; padding: 5px 25px; background: orange; text-decoration: none; color: black; font-size: 0.9em; font-weight: bold;}
	input[type="radio"] {display: none;}
	p{margin: 0 0 20px; line-height: 1.5;}
    h1{padding: 20px 0; font-weight: bold; text-align: center;}
	section{display: none; padding: 20px 0 0; border-top: 1px solid #ddd;}
	label{display: inline-block; margin: 0 0 -1px; padding: 15px 25px; font-weight: 600; text-align: center; border: 1px solid transparent;}
    .main{min-width: 320px; max-width: 800px; margin: 0 auto; background: #ffffff;}
	.button{border: 1px solid #333; border-radius: 5px; padding: 5px 25px; background: orange; text-decoration: none; color: black; font-size: 0.9em; font-weight: bold;}
	.notice{text-align: center; border: 1px solid; height: 200px; font-size: 15px; line-height: 140px; padding: 50px;}
	label:hover{color: #2e9cdf; cursor: pointer;}
	input:checked + label{border: 1px solid #ddd; border-top: 2px solid #2e9cdf; border-bottom: 1px solid #ffffff;}
	#tab1:checked ~ #content1,
	#tab2:checked ~ #content2,
	#tab3:checked ~ #content3,
	#tab4:checked ~ #content4 {display: block;}     
</style>
</head>

<body>
	<jsp:include page="k_menu.jsp" />
	
	<h1>My Page</h1>
	
	<div class="main">
	
    <input id="tab1" type="radio" name="tabs" checked>
    <label for="tab1">내정보</label>
    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">정보 수정</label>
    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">비밀번호 변경</label>
    <input id="tab4" type="radio" name="tabs">
    <label for="tab4">회원 탈퇴</label>
    
    <section id="content1">
		<table>
			<tr>
				<td>아이디</td>
				<td>${userId }</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mPwd" value="${userPassword }" disabled></td>
				<td><a href="#" class="button">비밀번호 변경</a></td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${userName }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${userGender }</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>${userBirth }</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${userEmail }</td>
			</tr>
				<td>연락처</td>
				<td>${userPhone }</td>
			</tr>
		</table>
    </section>

    <section id="content2">
    <form action="updateUser.do" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td>${userId }</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mPwd3" value="${userPassword }" disabled></td>
				<td><a href="#" class="button">비밀번호 변경</a></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="mBirth" value="${userBirth }"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="mEmail" value="${userEmail }"></td>
			</tr>
				<td>연락처</td>
				<td><input type="text" name="mPhone" value="${userPhone }"></td>
			</tr>
		</table><br>
		<input type="reset" value="취소">
		<input type="submit" value="변경">		
    </form>
    </section>

    <section id="content3">
		<table>
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" name="mPwd2"></td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" name="nPwd"></td>
			</tr>
			<tr>
				<td>비밀번호 재확인</td>
				<td><input type="password" name="nPwd_c"></td>
			</tr>
		</table><br>
		<input type="reset" value="취소">
		<input type="submit" value="변경" onClick="if(confirm('정말로 비밀번호를 변경하시겠습니까?')){location.href='#.do';}">		
    </section>
    
    <section id="content4">
    <div class="notice">
			<p>
			※ 회원탈퇴 시 주의사항 안내문 ※<br><br>
			회원을 탈퇴 하시면 해당 아이디로는 재가입 할 수 없습니다.<br>
			탈퇴 시 보유하고 계신 예약 강의와 수강 내역 등 모두 삭제되어,<br>
			복구가 불가능 하니 신중하게 결정 부탁 드립니다.<br>
			...<br>
			...<br>
			...<br>
			...<br>
			</p>
		</div>
        <br>
        <center>
        <input type="checkbox"> ※ 위 내용을 모두 확인하였으며, 이에 동의합니다.<br><br>
		<input type="reset" value="취소">
		<input type="submit" value="탈퇴" onClick="if(confirm('정말로 탈퇴하시겠습니까?')){location.href='#.do';}">		
  	 	</center>
	</div>
	</section>
	<jsp:include page="k_footer.jsp" />
</body>
</html>