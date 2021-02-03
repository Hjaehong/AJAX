<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sub(){
		// 생성, 삭제, 수정
		var divNode=document.createElement("div");
		
		var spanNode=document.createElement("span");
		spanNode.innerHTML="안녕하세요.";
		
		divNode.appendChild(spanNode);
		document.body.appendChild(divNode);
	}
</script>
</head>
<body onload="sub()">

</body>
</html>