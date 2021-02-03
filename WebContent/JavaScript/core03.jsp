<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 1. Number 객체 - 일반자료형이 아니고 다 객체(클래스) 이다.
	var su=10;
	var value=new Number(10);
	document.write("su:" + su.toString() + "<br/>");
	document.write("value:" + value.toString() + "<br/>");
	document.write("max:" + Number.MAX_VALUE + "<br/>");
	document.write("min:" + Number.MIN_VALUE + "<br/><br/>");
	
	// var num=new Number(123.45678);
	var num=123.45678;
	document.write("1:" + num + "<br/>");
	document.write("2:" + num.toFixed(3) + "<br/>");			 // 소수이하 자리, 자동반올림
	document.write("3:" +num.toPrecision(10) + "<br/>");     // 총자리수 남는 자리 0으로 채워진다.
	document.write("4:" +num.toPrecision(5) + "<br/><br/>");
	
	// 2. String 객체
	var abc="안녕하세요";
	var xyz=new String("안녕하세요");
	document.write(abc + "<br/>");
	
	var str="ABCDEFGHIJ";
	document.write(str.substring(6) + "<br/>");
	document.write(str.substring(2, 5) + "<br/>");
	document.write(str.toLowerCase() + "<br/>");
	document.write(str.toUpperCase() + "<br/><br/>");
	
	// 3. Math 객체
	document.write("절대값:" + Math.abs(-15) + "<br/>");
	document.write("최대값:" + Math.max(10, 15) + "<br/>");
	document.write("최소값:" + Math.min(10, 15) + "<br/>");
	document.write("누승:" + Math.pow(2, 3) + "<br/>");
	document.write("랜덤:" + Math.random() + "<br/><br/>");
	
	// 4. Array 객체
	var cars = ["Saab", "Volvo", "BMW"];
	var car=new Array("Saab", "Volvo", "BMW");
	cars[0]="소나타";
	
	document.write(cars + "<br/>");
	document.write(cars.sort() + "<br/>");              // 오름차순
	document.write(cars.reverse() + "<br/><br/>");			// 내림차순	
	
	// 5. Date 객체 
	var date=new Date();
	document.write(date  + "<br/>");
	document.write(date.getFullYear() + "<br/>");
	document.write((date.getMonth() + 1) + "<br/>");
	document.write(date.getDate());
	
	// 내장객체 document, window
	// 내장함수 (Global)
	var a="77";
	var b=parseInt(a);
	
</script>
</head>
<body>

</body>
</html>














