<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(root){
		var url=root+"/json/jsonObj.stu";
		sendRequest("GET", url, fromServer, null);
	}
	
	function fromServer(){
		arr.push(xhr.readyState + "," + xhr.status);
		
		if(xhr.readyState==4 && xhr.status==200){
			arr.push(xhr.responseText);
			
			var obj=JSON.parse(xhr.responseText);
			
			var divBunho=document.createElement("div");
			divBunho.innerHTML=obj.bunho;
			
			var divIrum=document.createElement("div");
			divIrum.innerHTML=obj.iurm;
			
			var divAverage=document.createElement("div");
			divAverage.innerHTML=obj.average;
		
			var disp=document.getElementById("disp");
			disp.appendChild(divBunho);
			disp.appendChild(divIrum);
			disp.appendChild(divAverage);
		}
		
		// alert(arr.join("\n"));
	}
</script>
</head>
<body onload="toServer('${root}')">
	<div id="disp"></div>
</body>
</html>