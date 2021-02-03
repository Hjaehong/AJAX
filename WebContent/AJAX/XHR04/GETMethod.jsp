<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer() {
		var msg = document.getElementById("msg");
		var params = "msg=" + msg.value;
		
		sendRequest("GET", "xhr.jsp", fromServer, params);
	}
	
	function fromServer() {
		if(xhr.readyState==4 && xhr.status==200){
			alert(xhr.responseText);
		}
	}
	</script>
</head>
<body>
	<form>
		<input type="text" id="msg"/>
		<input type="button" value="전송" onclick="toServer()"/> 
	</form>
</body>
</html>