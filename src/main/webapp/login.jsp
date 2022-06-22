<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 로그인 </title>
</head>
<body>
	<%
		String mid = (String)session.getAttribute("memberId");	
		if(mid == null) {					// session 값이 비었는지 확인
	%>
	<form action="loginOk.jsp" method="post">		<!-- 개인정보 보안은 post로 설정 -->
		아이디 : <input type="text" name="id"> <br><br>
		비밀번호 : <input type="password" name="pw"> <br><br>
		<input type="submit" value="로그인">
	
	</form>	<!-- 입력한 값이 request객체에 실려서 넘어감 -->
	
	<%
		}
		else {
	%>
		현재 <%= mid %>님 로그인 중입니다. <br><br>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<%
		}
	%>
</body>
</html>