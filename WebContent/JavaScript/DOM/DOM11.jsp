<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sub(){
		var divNode=document.createElement("div");
		divNode.id="apple";
		
		for(var i=0;i<3;i++){
			var inputNode=document.createElement("input");
			/*inputNode.type="button";
			inputNode.value="클릭" + (i+1);
			inputNode.onclick=abc;*/
			
			inputNode.setAttribute("type", "button");
			inputNode.setAttribute("value", "클릭" + (i+1));
			inputNode.setAttribute("onclick", "abc()");
			
			divNode.appendChild(inputNode);
		}
		
		brNode=document.createElement("br");

		input=document.createElement("input");
		input.type="button";
		input.setAttribute("value", "버튼"); 
		
		var str="apple";
		var ch="banana"; 
		// input.onclick=xyz;     input.setAttribute("xyz()")    call by name()  
		
		// input.setAttribute("onclick", "xyz('"+str+"')");       call by value()
		
		// 익명함수 : 함수 이름이 없고 주로 한번 사용한다.
		input.onclick=function(){
			xyz(str, ch);
		}
		
		/*input.onclick=function(){
			abc();
		}
		
		input.onclick=function(){
			abc(10);
		}
		
		input.onclick=function(){
			abc(str);
		}*/
		
		document.body.appendChild(divNode);		
		document.body.appendChild(brNode);	
		document.body.appendChild(input);	
	}
	
	function xyz(str, ch){
		alert(str + "," + ch);
	}
	
	function abc(){
		alert("abc Function");
	}
</script>
</head>
<body onload="sub()">

</body>
</html>







