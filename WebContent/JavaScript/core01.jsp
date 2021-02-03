<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 자료형</title>
<script type="text/javascript">
	// 자료형 (문자, 숫자)
	var su=10;
	var value=33.5;
	var hap=su+value;
	var str1="자바스크립트";
	var str2='하하하';
	var str3="A";
	document.write("<h3>" + su + "</h3>");
	document.write("<h3>" + str1 + "</h3>")
	
	var suArr=[1, 2, 3];
	var strArr=["apple", "banana", "melon"];
	var arr=new Array();
	arr[0]=77;
	arr[1]=88;
	arr[2]=77;
	
	for(var i=0;i<strArr.length;i++){
		document.write("<h3>" + strArr[i] + "</h3>");
	}
	
	// 제어문 : 조건문(if, switch), 반복문(for, while, do~while)
	if(su > 20){
		document.write("<h3>20보다 큰 수 입니다.</h3>");
	}else if(su > 30){
		document.write("<h3>30보다 큰 수 입니다.</h3>");
	}else{
		document.write("<h3>기타등등입니다..</h3>");
	}
</script>
</head>
<body>
	<!-- 
		1) Core : 기본문법 (자료형, 제어문(반복문, 조건문), 함수)
		2) BOM(Browser Object Model) : 브라우저와 관련된 것 Window, Navigator, Location, Document, Screen객체
		3) DOM(Document Object Model) : Element 제어, Style 제어, Attribute 제어, Event 제어
	 -->
</body>
</html>








