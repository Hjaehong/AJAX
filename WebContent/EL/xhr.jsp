<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="xhr.js"></script>
</head>
<body>
	<h3>비동기 통신 (정적)</h3>
	<form action="#">
		<input type="button" value="요청" onclick="startRequest()"/>
	</form>
	<br/><br/>
	
	<h3>결과 값</h3>
	<div id="disp"></div>
</body>
</html>