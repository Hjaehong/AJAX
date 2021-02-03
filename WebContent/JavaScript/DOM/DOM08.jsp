<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sub(){
		var divNode=document.createElement("div");
		
		var spanNode=document.createElement("span");
		spanNode.innerHTML="반가워요";
		
		var brNode=document.createElement("br");
		
		var bNode=document.createElement("b");
		bNode.innerHTML="안녕하세요";
		
		divNode.appendChild(spanNode);
		divNode.appendChild(brNode);
		divNode.appendChild(bNode);
		
		document.body.appendChild(divNode);
		
		var fontNode=document.createElement("font");
		fontNode.innerHTML="내일 금요일";
		divNode.replaceChild(fontNode, spanNode);
		
	}
</script>
</head>
<body onload="sub()">

</body>
</html>