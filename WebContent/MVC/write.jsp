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
	<h3> Write Page </h3>
	
	<c:set var="m" value="${msg}"/>
	
	<div>
		전송된 데이터 값 : <c:out value="${m}"/>
	</div>
</body>
</html>