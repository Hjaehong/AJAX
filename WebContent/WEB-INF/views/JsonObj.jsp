<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>JSON</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(root) {
		var url=root+"/json/jsonObj.stu"
		
		sendRequest("GET", url, fromServer, null);
	}
	
	function fromServer() {
		arr.push(xhr.readyState + "," + xhr.status);
		
		if(xhr.readyState==4 && xhr.status==200){
			arr.push(xhr.responseText);
		}
		
		alert(arr.join("\n"));
	}
</script>
</head>
<body onload="toServer('${root}')">
	<div id="disp"></div>
</body>
</html>