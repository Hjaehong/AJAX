<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="FruitClass.js"></script>

<script type="text/javascript">
	function instanceFruit(){
		var f=new Fruit();
		f.taste();
		f.disp();
	}
</script>
</head>
<body>
	<span>과일</span>
	<input type="button" value="과일" onclick="instanceFruit()"/>
</body>
</html>