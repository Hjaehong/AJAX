<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- JSTL(JSP Standard Tag Library) : http://tomcat.apache.org/taglibs/ 
	       API : https://docs.oracle.com/cd/E17802_01/products/products/jsp/jstl/1.1/docs/tlddocs/index.html --%>

	<div>
		<c:out value="JSTL 연습입니다."/>
		${"JSLT 연습니다."}
		
		<c:out value="10"/>	
	</div>
	<br/>
	
	<h2>변수 선언</h2>
	<%-- int su=10 --%>
	<c:set var="su" value="10"/>
	
	<%--String hangul="우하하하" --%>
	<c:set var="hangul" value="우하하하"/>
	
	<div>
		숫자 출력 : ${su}, <c:out value="${su}"/>
		문자 출력 : ${hangul}, <c:out value="${hangul}"/>
	</div>
	<br/>
	
	<h2>객체</h2>
	<jsp:useBean id="name" class="com.java.jstl.Name"/>
	<c:set target="${name}" property="lastName" value="홍"/>
	<c:set target="${name}" property="firstName" value="길동"/>
	
	<div>
		성 : ${name.lastName}
		이름 : <c:out value="${name.firstName}"/>
	</div>
	<br/>
	
	<h3>변수 제거</h3>
	<c:set var="age" value="25"/>
	나이 : <c:out value="${age}"/>
	
	<c:remove var="age"/>
	나이 : <c:out value="${age}"/>
	<br/>
	
	<h3>예외처리</h3>
	<c:catch var="errMsg">
		<%= 10/0 %>
	</c:catch>
	
	<c:out value="${errMsg}"/>
</body>
</html>















