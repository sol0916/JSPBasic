<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//세션에 값이 있다면 로그인
	String user_id = (String)session.getAttribute("user_id");
	String user_name = (String)session.getAttribute("user_nickName");

	//로그인한 사람만 접근이 가능
	if(session.getAttribute("user_id")==null) {
		response.sendRedirect("session_login.jsp");
	}
	
%>

	   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>로그인 성공!</h3> <br/>
	<h3><%=user_id %>(<%=user_name %>)님 환영합니다</h3> <br/>
	<a href="session_logout.jsp">로그아웃</a>

</body>
</html>