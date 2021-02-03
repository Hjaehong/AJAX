<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수</title>
<script type="text/javascript">
	function sub(su){
		window.alert("결과:" + su);  
		alert(su);                 // window 객체 가지고 있는 함수나 변수 window 객체명을 생략할 수 있다.
	}
	
	function bigText(obj){   // obj=this=div
		obj.style.color="blue";
		obj.style.fontSize="50px";
		obj.style.fontFamily="궁서체";
	}
	
	function normalText(obj){
		obj.style.color="red";
		obj.style.fontSize="16px";
		obj.style.fontFamily="맑은고딕";
	}
	
	/* function aa(){ }
	function bb(){
		return 10
	}
	aa();
	var value=bb(); */
</script>
</head>
<body>
	<!-- HTML 속성 이벤트(마우스, 키보드) , 이벤트 처리는 자바크립트 함수, 
	      이벤트 핸들러 이벤트 발생 했을때 함수를 찾아가는것 말함-->
	<input type="button" value="클릭" onclick="sub(10)"/>
	<br/><br/>
	
	<div onclick="sub(22.2)" align="center">클릭</div>
	<br/><br/>
	
	<div onmouseover="bigText(this)" style="cursor: grab;" onmouseout="normalText(this)">안녕하세요.</div>
	
	
</body>
</html>













