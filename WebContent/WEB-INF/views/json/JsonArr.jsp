<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(root){
		var url=root + "/json/jsonArr.stu";
		sendRequest("GET", url, fromServer, null)
	}
	
	function fromServer(){
		if(xhr.readyState==4 && xhr.status==200){
			var obj=JSON.parse(xhr.responseText);
			arr.push(obj.data.length);
			
			var str="<div>";
			for(var i=0;i<obj.data.length;i++){
				str +="<div>" +  obj.data[i].name +"<div>";
				str +="<div>" +  obj.data[i].phone +"<div>";
				str +="<div>" +  obj.data[i].address +"<div>";
				str +="<br/>";
			}
			str +="</div>";
		
			var disp=document.getElementById("disp");
			disp.innerHTML=str;
		}	
		// alert(arr.join("\n"));
	}
</script>
</head>
<body onload="toServer('${root}')">
	<div id="disp"></div>
</body>
</html>











