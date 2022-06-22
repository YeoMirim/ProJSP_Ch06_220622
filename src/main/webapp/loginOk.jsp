<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 확인 </title>
</head>
<body>
	<% 			/* java영역 */
		String memberId = request.getParameter("id"); // tiger		/* login.jsp의 입력된 id 값을 가져옴 */
		String memberPw = request.getParameter("pw"); // 12345	
		
		if (memberId.equals("tiger") && memberPw.equals("12345")) {
			
			session.setAttribute("memberId", memberId);  /* 세션에 저장, Attribute의 속성은 멤버변수*/
			session.setAttribute("memberPw", memberPw);
			
			
			out.println("로그인 성공! <br>");			// web 화면에 찍히는 내용
			out.println(memberId + "님 반갑습니다.");
		}
		
		else {
			out.println("로그인 실패! <br>");
		}
		
		
	%>
</body>
</html>