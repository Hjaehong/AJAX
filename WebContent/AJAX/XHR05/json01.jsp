<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(){
		sendRequest("POST", "json01.txt", fromServer, null);
	}
	
	function fromServer(){
		arr.push(xhr.readyState + "," + xhr.status);
		if(xhr.readyState==4 &&  xhr.status==200){
			arr.push(xhr.responseText);
			
			var obj=JSON.parse(xhr.responseText);
			arr.push(obj.name + "," + obj.age + "," + obj.ki);
			// alert(arr.join("\n"));
			
			var ulNode=document.createElement("ul");
			
			var liNodeName=document.createElement("li");
			liNodeName.innerHTML=obj.name;
			
			var liNodeAge=document.createElement("li");
			liNodeAge.innerHTML=obj.age;
			
			var liNodeKi=document.createElement("li");
			liNodeKi.innerHTML=obj.ki;
			
			ulNode.appendChild(liNodeName);
			ulNode.appendChild(liNodeAge);
			ulNode.appendChild(liNodeKi);
	
			document.getElementById("result").appendChild(ulNode);
		}
	}
</script>
</head>
<body onload="toServer()">
	<div id="result"></div>
</body>
</html>








