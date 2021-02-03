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
		
		for(var i=0;i<10;i++){
			var spanNode=document.createElement("span");
			spanNode.innerHTML="내용" + (i+1);
			
			var brNode=document.createElement("br");
			
			divNode.appendChild(spanNode);
			divNode.appendChild(brNode);
			
			divNode.removeChild(brNode);
		}
		
		document.body.appendChild(divNode);
		
		var dispNode=document.getElementById("disp");
		document.body.removeChild(dispNode);
	}
</script>
</head>
<body onload="sub()">
	<div id="disp">드됴 대면수업 시작!!!</div>
</body>
</html>










