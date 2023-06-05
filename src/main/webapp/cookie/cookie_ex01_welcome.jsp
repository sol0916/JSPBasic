<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//1. name 값이 user_id인 쿠키를 찾는다
	
	Cookie[] arr = request.getCookies(); //한개가 아님
	
	String name = "";
	
	if(arr!=null) {
		
		for(Cookie c : arr) {
			if(c.getName().equals("user_id")) { //쿠키가 있음
				name = c.getValue();				
			}
		}
		
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과페이지</h3>

	<%--	
	user_id 쿠키를 확인해서 "xxx님 환영합니다"를 화면에 출력	
	 --%>
	
	<h3>로그인에 성공하셨습니다</h3>
	<h3><%=name %>님 환영합니다</h3>



</body>
</html>