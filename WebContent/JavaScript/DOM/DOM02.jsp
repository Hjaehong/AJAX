<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sub(){
		var test1=document.getElementById("test1");
		// test1.align="center";
		test1.innerHTML="가";
		
		var test2=document.getElementById("test2");
		var span=test2.getElementsByTagName("span");
		span[1].innerHTML="나";
		
		var test3=document.getElementById("test3");
		tspan=test3.getElementsByTagName("span");
		tspan[1].innerHTML="다";
		
		var input=document.getElementsByTagName("input");
		input[0].value="배고파";
		
		input[1].value="치킨먹고 싶다.";
		input[1].size="7";
	}
</script>
</head>
<body>
	<div id="test1"></div>
	
	<div id="test2">
		<span>1</span>
		<span>2</span>
		<span>
			<span>3</span>
			<span>4</span>
		</span>
	</div>
	
	<div id="test3">
		<span>5</span>
		<span>6</span>
	</div>
	<br/><br/>
	
	<input type="button" value="클릭" onclick="sub()"/>
	<input type="text"  value="하하하"/>
</body>
</html>