<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//실행될때마다 랜덤한 로또번호를 저장하고 출력해주는 프로그램 코드를 작성해보세요
	//방법은 자유

	TreeSet<Integer> lotto = new TreeSet<>();	
	TreeSet<Integer> lotto2 = new TreeSet<>();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<% while(lotto.size()<6) {
	  int num = (int)(Math.random()*45)+1;
	  lotto.add(num);
	} %>
	
	로또 번호 : <%=lotto.toString()%>
	
	<br/>
	
	<%
	for(int i=0; i<99; i++) {
		if(lotto2.size()<6) break;
		int num = (int)(Math.random()*45)+1;
		lotto2.add(num);
	}
	%>
	
	로또 번호 : <%=lotto2.toString() %>
	

</body>
</html>