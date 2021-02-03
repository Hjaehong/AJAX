<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function sub(){
				var arr=new Array();
				
				var dauther=document.getElementById("dauther");
				var dautherFather=dauther.parentNode;
				arr.push(dautherFather.nodeName + "," + dautherFather.nodeValue + "," + dautherFather.nodeType);
				
				var dautherGrandfather=dauther.parentNode.parentNode;
				arr.push(dautherGrandfather.nodeName + "," + dautherGrandfather.nodeValue + "," + dautherGrandfather.nodeType);
				
				alert(arr.join("\n"));
				
			}
		</script>
	</head>
	
	<body onload="sub()">
		<div>
			<div>
				<span id="firstSon">첫째 입니다.</span>
				<span id="dauther">둘째 입니다.</span>
				<span id="secondSon">셋째 입니다.</span>
			</div>
		</div>
	</body>
</html>