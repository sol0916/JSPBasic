<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	String name2 = (String) request.getAttribute("name2");
	Date date = (Date) request.getAttribute("date");

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과페이지</h3>
	<!--  
	아이디: <%=id %> <br/>
	이름: <%=name %> <br/>
	-->
	
	<%=name2 %> <br/>
	<%=date %> <br/>

</body>
</html>