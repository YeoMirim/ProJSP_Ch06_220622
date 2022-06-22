<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보 확인</title>
</head>
<body>
	<h2>모든 세션 정보 확인하기</h2>
	<hr>
	<%
		Enumeration enumer = session.getAttributeNames();	
		// getAttributeNames()는 session값을 다중으로 가져옴(배열 형태=>Enumeration(시퀀스객체-순서가 있음)으로 받아야함)
		
		String name;
		String value;
		
		while(enumer.hasMoreElements())	// 다음원소가 있으면 계속 ture값을 반환(무한루프)하다가 없으면 false를 반환해서 탈출 
		{
			name = enumer.nextElement().toString();	
			// nextElement()는 다음 값을 가져옴(이름을 뽑음). object형태로 반환(조상)하기 때문에 .toString으로 형변환
			value = (String) session.getAttribute(name);
			
			// 스택구조로 출력값들이 거꾸로 나옴
			
			
			out.println("세션의 이름 : " + name + "<br>");
			out.println("세션의 속성값 : " + value + "<br>");
		}
		
	%>
</body>
</html>