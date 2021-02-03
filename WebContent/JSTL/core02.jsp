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
	<c:set var="fruit" value="apple"/>
	
	<h3>제어문 - IF</h3>
	<c:if test="${fruit=='apple'}">
		<c:out value="${fruit} apple 입니다."/>
	</c:if>
	
	<c:if test="${fruit !='apple'}">
		<c:out value="${fruit}는 apple 아님."/>
	</c:if>
	
	<h3>제어문 - CHOOSE</h3>
	<c:choose>
		<c:when test="${fruit=='apple'}">
			<c:out value="사과입니다."/>
		</c:when>
		
		<c:when test="${fruit=='banana'}">
			<c:out value="바나나입니다."/>
		</c:when>
		
		<c:when test="${fruit=='orange'}">
			<c:out value="오렌지 입니다."/>
		</c:when>
		
		<c:otherwise>기타등등</c:otherwise>
	</c:choose>
</body>
</html>












