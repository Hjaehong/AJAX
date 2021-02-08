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
		sendRequest("GET", "json03.txt", fromServer, null)
	}
	
	function fromServer(){
		arr.push(xhr.readyState + ", " + xhr.status);
		
		if(xhr.readyState==4 && xhr.status==200){
			// arr.push(xhr.responseText);
			var obj=JSON.parse(xhr.responseText);
	
			arr.push(obj.name + "," + obj.age + "," + obj.cars.length 
					     + "," +  obj.cars[0].models.length);
			
			var divNode=document.createElement("div");
			var divNodeName=document.createElement("div");
			var divNodeAge=document.createElement("div");
			
			divNodeName.innerHTML=obj.name;
			divNodeAge.innerHTML=obj.age;
			
			divNode.appendChild(divNodeName);
			divNode.appendChild(divNodeAge);
			
			for(var i=0;i<obj.cars.length;i++){
				arr.push(obj.cars[i].name);
				
				var ulNode=document.createElement("ul");
				var liCarName=document.createElement("li");
				liCarName.innerHTML=obj.cars[i].name;
				ulNode.appendChild(liCarName);
				
				for(var j=0;j<obj.cars[i].models.length;j++){
					arr.push(obj.cars[i].models[j]);
					
					var li=document.createElement("li");
					li.innerHTML=obj.cars[i].models[j];
					ulNode.appendChild(li);
				}
				arr.push("\n");
				
				divNode.appendChild(ulNode);
			}
			
			document.getElementById("disp").appendChild(divNode);
		}
		
		// alert(arr.join("\n"));
	}
</script>
</head>
<body onload="toServer()">
	<div id="disp"></div>
</body>
</html>




