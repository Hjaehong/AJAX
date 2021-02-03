<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fun(){
		// 노드 생성, 치환, 삭제, 추가 : createElement(),  replaceChild(), removeChild(), appendChild()
		var divNode=document.createElement("div");
		
		var textNode=document.createElement("input");
		textNode.type="text";
		textNode.name="id";
		
		var brNode=document.createElement("br");
		
		var btnNode=document.createElement("input");
		btnNode.type="button";
		btnNode.value="클릭";
		
		divNode.appendChild(textNode);
		divNode.appendChild(brNode);
		divNode.appendChild(btnNode);
		
		document.body.appendChild(divNode);
	}
	
	function abc(){
		alert("OK");
	}
</script>
</head>
<body onload="fun()">

</body>
</html>