<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String cm = request.getParameter("cm");
	String kg = request.getParameter("kg");
	
		
	double cmD = Double.parseDouble(cm);
	double kgD = Double.parseDouble(kg);
		
	double bmi = kgD / (cmD/100*cmD/100);
		
				
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름: <%=name %> <br>
	키: <%=cm %> <br>
	체중: <%=kg %> <br>
	BMI: 
	<% 	if(bmi>=25) { %>
		<b>과체중입니다</b>
	<% } else if(bmi<=18) { %>
		<b>저체중입니다</b>
	<% } else { %>
		<b>정상입니다</b>
	<%  } %>
	


</body>
</html>
