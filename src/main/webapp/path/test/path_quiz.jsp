<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그 사용해서 req_get01 페이지로 상대경로 -->
	<!-- a태그 사용해서 req_get01 페이지로 절대경로 -->
	
	<a href="../../request/req_get01.jsp">req_get01(상대경로)</a>
	<a href="/JSPBasic/request/req_get01.jsp">req_get01(절대경로)</a>
	
	<br>
	
	<!-- a태그 사용해서 DemoServlet으로 상대경로 (맵핑 경로를 확인)-->
	<!-- a태그 사용해서 DemoServlet으로 절대경로 -->
	
	<a href="../../banana">DemoServlet(상대경로)</a>
	<a href="/JSPBasic/banana">DemoServlet(절대경로)</a>
	
	<br>
	
	<!-- jsptag폴더 밑에 있는 이미지를 띄워주세요. img태그로 -->
	<img src="../../jsptag/포차코.png"></a>
	

</body>
</html>