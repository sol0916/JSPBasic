<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 삭제는 동일한 이름으로 시간을 0초 선언하면 삭제됩니다.
	//직접적으로 삭제하는 문법은 없다.
	Cookie cookie = new Cookie("choco", "aaa123"); //이름이 같아야 합니다 (값은 덮어쓰여져서 상관 x)
	
	cookie.setMaxAge(0); //0초 선언
	
	response.addCookie(cookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키는 이미 삭제가 되어있습니다.</h3>
	
	<a href="cookie_get.jsp">쿠키 확인하기</a>

</body>
</html>