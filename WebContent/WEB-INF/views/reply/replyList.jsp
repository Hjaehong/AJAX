<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/reply/reply.css">
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/replyJS/replyWrite.js"></script>
<script type="text/javascript" src="${root}/replyJS/replyDelete.js"></script>
<script type="text/javascript" src="${root}/replyJS/replyUpdate.js"></script>
</head>
<body>
	<h3>실시간 댓글 작성</h3>
	<div>
		<input id="writeReply" type="text" name="write" size="45"/>
		<input type="button" value="실시간 한줄 댓글" onclick="writeToServer('${root}')"/>
	</div>
	
	<div id="listAllDiv">
		<!-- 새로운 글 ajax, json-->
		
		<!-- 기존 글 -->
		<c:forEach var="replyDto" items="${replyList}">
			<div class="replyDiv" id="${replyDto.bunho}">
				<span class="cssBunho">${replyDto.bunho}</span>
				<span class="cssReply">${replyDto.line_reply}</span>
				<span class="cssUpDel">
					<a href="javascript:deleteToServer('${replyDto.bunho}','${root}')">삭제 &nbsp;</a>
					<a href="javascript:upSelectToServer('${replyDto.bunho}','${root}')">수정</a>
				</span>
				
			</div>
		</c:forEach>
	</div>
</body>
</html>