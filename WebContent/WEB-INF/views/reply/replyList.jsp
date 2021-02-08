<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/replyJS/replyWrite.js"></script>
</head>
<body>
	<h3>실시간 댓글 작성</h3>
	<div>
		<input id="writeReply" type="text" name="write" size="45"/>
		<input type="button" value="실시간 한줄 댓글" onclick="writeToServer('${root}')"/>
	</div>
	
	<div id="listAllDiv">
		<!-- 새로운 글 -->
		
		<!-- 기존 글 -->
		
	</div>
</body>
</html>