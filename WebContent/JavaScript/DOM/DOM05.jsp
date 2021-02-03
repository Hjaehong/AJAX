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
				var older=dauther.previousSibling;
				var olderValue=getPreviousSibling(older);
				arr.push(olderValue);
				
				var youger=dauther.nextSibling;
				var yougerValue=getNextSibling(youger);
				arr.push(yougerValue);
				
				alert(arr.join("\n"));
			}
			
			function getNextSibling(node){
				if(node.nodeType==1){
					return node.childNodes[0].nodeValue;
				}
				
				if(node.nodeType==3){
					return node.nextSibling.childNodes[0].nodeValue;
				}
			}
			
			function getPreviousSibling(node){
				// alert(node.nodeType + node.nodeValue);
				
				if(node.nodeType==1){
					return node.childNodes[0].nodeValue;
				}
				
				if(node.nodeType==3){
					return node.previousSibling.childNodes[0].nodeValue;
				}
				
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