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
	<h3>제어문 - FOR</h3>
	
	<c:forEach var="i" begin="1" end="10" step="3">
		${i}
	</c:forEach>
	<br/>
	
	<c:forEach var="j" begin="1" end="10">
		<c:if test="${j%2==0}">
			${j}
		</c:if>
	</c:forEach>
	<br/>
	
	<c:forEach var="k" begin="1" end="100">
		<c:set var="tot" value="${tot+k}"/>
	</c:forEach>
	
	<div>
		총합 : <c:out value="${tot}"/>
	</div>
	
	<%
		java.util.ArrayList<String> arrList=new java.util.ArrayList<String>();
		arrList.add("사과");
		arrList.add("바나나");
		arrList.add("딸기");
	%>
	
	<c:set var="arrryList" value="<%=arrList %>"/>
	
	<c:forEach var="fruit" items="${arrryList}">
		<c:out value="${fruit}"/>
	</c:forEach>
</body>
</html>












