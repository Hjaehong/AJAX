<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/* 
	1.  HTML은 태그와 태그 또는 태그와 text 구성 되어 있다.
	     태그는 속성(W3)을 갖는다.
	     
	2. 노드(태그 또는 앨러먼트)를 취하는 두가지 방법 
	    2-1) 직접 액세스 하기 : TAG명, ID, CLASS 
	    2-2) 상대 위치 관계로 : 
	*/
	
	function test(){
		var div=document.getElementsByTagName("div");    // div[0], div[1]
		div[0].innerHTML="apple";
		div[1].innerHTML="banana";
	}
	
	function sub(){
		var font=document.getElementsByTagName("font");
		var span=font[0].getElementsByTagName("span");
		span[0].innerHTML="사과";
		span[1].innerHTML="바나나";
	}
</script>
</head>
<body>
	<div></div>
	<div></div>
	<input type="button" value="클릭" onclick="test()"/>
	<br/><br/>
	
	<font>
		<span></span>
		<span></span>
		<input type="button" value="클릭" onclick="sub()"/>
	</font>
	
	<div></div>
</body>
</html>