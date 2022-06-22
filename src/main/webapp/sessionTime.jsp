<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 유효시간</title>
</head>
<body>
	
	<h2>세션의 유효시간 출력하기</h2>
	<hr>
	<%
		int session_time = session.getMaxInactiveInterval()/60;	// 기본단위 : 초 => /60으로 분으로 변경
		out.println("세션의 유효시간(기본값) : " + session_time + "분 <br>");	
		
		session.setMaxInactiveInterval(60 * 10); 	// 기본단위 : 초
		int session_time2 = session.getMaxInactiveInterval()/60;	
		out.println("세션의 유효시간(변경 후) : " + session_time2 + "분 <br>");	
			
	%>
	
	<hr>
	
	<%
		String session_id = session.getId();
		out.println("세션 아이디 : " + session_id + "<br>");	// 16진수로 만들어진 session의 고유값이 만들어짐(겹치면 안되서)
		long last_time = session.getLastAccessedTime()/60000;	// 마지막 접속시간, 기본값 1/1000초
//		out.println("세션 마지막 접근 시간 : " + last_time + "분<br>");
		long start_time = session.getCreationTime()/60000;	// 세션의 생성시간, 기본값 1/1000초
//		out.println("세션 생성 시간 : " + start_time + "분<br>");
		long keep_time = (last_time - start_time) / 60000;	// 세션 유지시간
		out.println("세션 유지 시간 : " + keep_time + "분<br>");
		
//		session.invalidate();
	%>
	
</body>
</html>