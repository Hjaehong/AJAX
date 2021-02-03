<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sub(){
		var arr=new Array();
		
		var divNode=document.createElement("div");
		divNode.innerHTML="반가워요";      // setMethod  dto.setNumber(1) dto.getNumber()
		divNode.style.color="blue";				// setMethod
		divNode.id="apple";						// setMethod
		
		arr.push(divNode.id);						// getMethod
		arr.push(divNode.style.color);
		arr.push(divNode.innerHTML);
		arr.push("\n");
		
		var div=document.createElement("div");
		div.innerHTML="안녕하세요";
		div.setAttribute("style", "color:pink");
		div.setAttribute("id", "banana");
		
		arr.push(div.getAttribute("style"));
		arr.push(div.getAttribute("id"));
		
		document.body.appendChild(divNode);
		document.body.appendChild(div);
		
		alert(arr.join("\n"));
	}
</script>
</head>
<body onload="sub()">

</body>
</html>