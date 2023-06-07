<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	fmt는 형변환을 다루는 기능을 가지고 있습니다
	
	Integer.parseInt() = String > int
	parse는 다른 타입으로의 변환
	
	parse => 다른 타입으로 형변환
	format => 같은 타입의 형태를 변환
	
	 --%>

	<h3>formatNumber, parseNumber, formatDate, parseDate</h3>
	
	<h3>formatDate => (날짜 데이터를 -> 날짜 형식으로 변환)</h3>
	
	<c:set var="a" value="<%=new Date() %>"></c:set>
	
	<fmt:formatDate var="a01" value="${a }" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
	<fmt:formatDate var="a02" value="${a }" pattern="yyyy-MM-dd"/>
	${a01 } <br/>
	${a02 } <br/>

	<h3>parseDate => 문자데이터를 -> 날짜 형식으로 변환</h3>
	
	<fmt:parseDate value="2023-06-07" pattern="yyyy-MM-dd" /> <br/>
	<fmt:parseDate value="2023년06월07일 15시28분03초" pattern="yyyy년MM월dd일 HH시mm분ss초" />

	<hr />

	<h3>formatNumber = > (숫자데이터 -> 숫자 형식으로 변환)</h3>

	<c:set var="b" value="20000" />
	
	<fmt:formatNumber value="${b }" pattern="00,000원" /> <br/>
	<fmt:formatNumber value="${b }" pattern="0000.00원" /> <br/>
	
	
	<h3>parseNumber => (문자데이터 -> 숫자로 형변환)</h3>
	
	<fmt:parseNumber value="20,000원" pattern="00,000원"/> <br/>
	<fmt:parseNumber value="123abc원" pattern="000abc원"/> <br/>
	
	<hr/>
	
	<h3>2020년 05월 03일으로 변경해서 출력</h3>
	<c:set var="TIME_A" value="2020/05/03" />
    <c:set var="TIME_C" value="2020-05-03 21:30:22" />
    <c:set var="TIME_D" value="<%=new Date() %>" />
    
    <h3>TIME_A 출력</h3>
    <fmt:parseDate var="TA" value="${TIME_A }" pattern="yyyy/MM/dd" />
    <fmt:formatDate value="${TA }" pattern="yyyy년MM월dd일"/>   
    <br/>
    
    <h3>TIME_C 출력</h3>
    <fmt:parseDate var="TC" value="${TIME_C }" pattern="yyyy-MM-dd HH:mm:ss"/>
    <fmt:formatDate value="${TC }" pattern="yyyy년MM월dd일" />
    <br/>
    
    <h3>TIME_D 출력</h3>
    <fmt:formatDate var="TD" value="${TIME_D }" pattern="yyyy년MM월dd일"/>
	2020년 05월 03일       
    

</body>
</html>