<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="xhr.js">
	
</script>
<title>Insert title here</title>
</head>
<!-- 기존 : jsp -> action class
	 AJAX : jsp -> js -> action class -->
<body>
	<h3>비동기 통신(정적)</h3>
	<div>요청</div>
	<form action="#">
		<input type="button" value="요청" onclick="startRequest()"/>
	</form>
	
	<h3>결과값</h3>
	<div id="disp"></div>
</body>
</html>