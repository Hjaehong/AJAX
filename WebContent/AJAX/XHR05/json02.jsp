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
		sendRequest("POST", "json02.txt", fromServer, null);
	}
	
	function fromServer(){
		arr.push(xhr.readyState + "," + xhr.status);
		
		
		if(xhr.readyState==4 && xhr.status==200){
			var obj=JSON.parse(xhr.responseText);
			arr.push("member Length:" + obj.member.length);
			
		var divNode=document.createElement("div");
			for(var i=0;i<obj.member.length;i++){
				arr.push(obj.member[i].stdNumber);
				arr.push(obj.member[i].stdName);
				arr.push(obj.member[i].score);
				arr.push("\n");
				
				var ulNode=document.createElement("ul");
				var liNodeNumber=document.createElement("li");
				liNodeNumber.innerHTML=obj.member[i].stdNumber;
				
				var liNodeName=document.createElement("li");
				liNodeName.innerHTML=obj.member[i].stdName;
				
				var liNodeScore=document.createElement("li");
				liNodeScore.innerHTML=obj.member[i].score;
				
				ulNode.appendChild(liNodeNumber);
				ulNode.appendChild(liNodeName);
				ulNode.appendChild(liNodeScore);
				
				divNode.appendChild(ulNode);
			}
			
			document.getElementById("result").appendChild(ulNode);
		}
		
		alert(arr.join("\n"));
	}
</script>
</head>
<body onload="toServer()">
	<h3 id="result"></h3>
</body>
</html>