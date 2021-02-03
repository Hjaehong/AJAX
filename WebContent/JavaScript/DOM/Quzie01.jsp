<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function abc(obj){
		if(obj.name.value==""){
			alert("입력하세요.");
			obj.name.focus();
			return false;
		}
	} 
	
	function sub(){
		var formNode=document.createElement("form");
		formNode.setAttribute("id", "createForm");
		formNode.setAttribute("action", "#");
		formNode.setAttribute("method", "post");
		
		formNode.onsubmit=function(){     
			abc(this);
			return true;
		}
		
		var labelNode=document.createElement("label");
		labelNode.innerHTML="이름 : ";
		
		var nameInput=document.createElement("Input");
		nameInput.setAttribute("type", "text");
		nameInput.setAttribute("name", "name");
		nameInput.setAttribute("size", "12");
		
		var brNode=document.createElement("br");
		
		var submitInput=document.createElement("input");
		submitInput.setAttribute("type", "submit");
		submitInput.setAttribute("value", "전송");
		
		formNode.appendChild(labelNode);
		formNode.appendChild(nameInput);
		formNode.appendChild(brNode);
		formNode.appendChild(submitInput);
		document.body.appendChild(formNode);
	}
</script>
</head>
<body onload="sub()"></body>
</html>