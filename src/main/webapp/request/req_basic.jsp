<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
 	StringBuffer url = request.getRequestURL();
 	String uri = request.getRequestURI();
 	String remote = request.getRemoteAddr();
 	
 	String header = request.getHeader("Content-Type"); //헤더정보값

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	컨택스트패스(프로젝트식별주소):<%= path %> <br>
	유알엘(전체주소): <%=url %> <br>
	유알아이(포트번호를제외한나머지주소-경로만남은값): <%=uri %> <br>
	접속한주소: <%=remote %> <br>
	요청에대한문서타입: <%=header %> <br>

</body>
</html>