<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 로그인 </title>
</head>
<body>
	<form action="loginOk.jsp" method="post">		<!-- 개인정보 보안은 post로 설정 -->
		아이디 : <input type="text" name="id"> <br><br>
		비밀번호 : <input type="password" name="pw"> <br><br>
		<input type="submit" value="로그인">
	
	</form>	<!-- 입력한 값이 request객체에 실려서 넘어감 -->
</body>
</html>