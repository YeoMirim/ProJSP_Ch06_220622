<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 확인</title>
</head>
<body>
	<h2>session 정보 확인</h2>
	<hr>
	<%
		
		String mid = (String)session.getAttribute("memberId");	// loginOk에서 session에 저장한 이름으로 불러와야함
		// 자식클래스로 만든 String의 mid는 부모 클래스의 memberId를 가져올순 없어서 업캐스팅 해야함 반대의 경우에는 가능함
		if(mid == null) {
			out.println("로그인 <br>");
		}
		else {
			/* out.println("로그아웃<br>");
			out.println("현재 " + mid + " 님은 로그인 중입니다."); */
	%>
		현재 <%= mid %> 님은 로그인 중입니다. <br>
		<a href="logout.jsp">로그아웃</a>	
		<!-- 세션을 무효화시켜서 로그아웃처리 가능 -->
	<%		
		}
		
	%>
<%-- 	현재 <%= mid %> 님은 로그인 중입니다. --%>
	<br>
	<a href="login.jsp">로그인 페이지로 가기</a>
	<br>
	
	<!-- session에서 가져온 값이지 request에서 가져온 값이 아님, session은 모든 페이지에서 사용 가능함 -->
</body>
</html>