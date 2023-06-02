<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id"); //input태그의 name 값이 들어갑니다
	String pw = request.getParameter("pw");
	//input 태그의 복수개 name을 받을 때 
	String[] agree = request.getParameterValues("agree"); 
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과페이지</h3>
	
	아이디:<%=id %> <br>	
	비밀번호:<%=pw %> <br>	
	동의여부:<%=Arrays.toString(agree) %> <br>

</body>
</html>