<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX 사용</title>
<script type="text/javascript" src="XHR/xhr.js"></script>
</head>
<body>
	<h3>JSON</h3>
	<a href="${root}/json.stu?msg=obj">JSON - Object</a>
</body>
</html>