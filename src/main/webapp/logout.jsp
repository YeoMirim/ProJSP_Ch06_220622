<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h2>로그아웃 확인</h2>
	<hr>
	<%
		session.invalidate();	// 세션 무효화(세션 삭제)
	%>
	
	<%
		
		/* String mid = (String)session.getAttribute("memberId");	// session 자체가 없어진 상태라서 500에러가 뜸
		if(mid == null) { */
		if(request.isRequestedSessionIdValid() != true) {	// session 값이 살아있으면 true 값, 없으면 false값
			out.println("로그아웃 되었습니다. <br>");	
			out.println("<a href='login.jsp'>");	// 로그인에 하이퍼링크 검, out.print에세는 줄별로 표현해줘야함
			out.println("로그인 <br>");
			out.println("</a>");
		}
		else {
	%>
		<br>
		<a href="logout.jsp">로그아웃</a>	
	<%		
		}
		
	%>
</body>
</html>