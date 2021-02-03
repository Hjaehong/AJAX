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
				
				var div=document.getElementsByTagName("div");
				arr.push(div[0].nodeName + "," + div[0].nodeValue);
				arr.push("\n");
				arr.push(div[0].childNodes[0].nodeName + "," +  div[0].childNodes[0].nodeValue);
				
				alert(arr);
			}
			
			function fun(){
				var arr=new Array();
				var apple=document.getElementById("apple");
				arr.push(apple.nodeName + "," + apple.nodeValue + "\n");
				
				var label=apple.getElementsByTagName("label");
				arr.push(label[1].nodeName + "," + label[1].nodeValue + "\n");
				arr.push(label[1].childNodes[0].nodeName + "," + label[1].childNodes[0].nodeValue + "\n\n");
				
				
				var span=apple.getElementsByTagName("span");
				var tlabel=span[1].getElementsByTagName("label");
				arr.push("다른방법1:" + tlabel[1].childNodes[0].nodeValue + "\n");
				
				var hi=document.getElementById("hi");
				arr.push("다른방법2:" + hi.childNodes[0].nodeValue);
				alert(arr);
			}
			
			function xyz(){
				var arr=new Array();
				
				var melon=document.getElementById("melon");
				var span=melon.getElementsByTagName("span");
				
				for(var i=0;i<span.length;i++){
					arr.push("node value:" + span[i].childNodes[0].nodeValue);
				}
				
				alert(arr.join("\n"));
			}
			
			function abc(){
				var arr=new Array();
				
				var banana=document.getElementById("banana");
				var bananaChild=banana.childNodes;
				arr.push(bananaChild.length);   // 만약 7
				arr.push("\n")
				
				for(var i=0;i<bananaChild.length;i++){
					arr.push( i + ":" + bananaChild[i].nodeName + "," + bananaChild[i].nodeValue + "," + bananaChild[i].nodeType);
					arr.push("\n")
				}
				arr.push("\n\n");
				
				for(var i=0;i<bananaChild.length;i++){
					if(bananaChild[i].nodeType==1){
						arr.push(bananaChild[i].childNodes[0].nodeValue);
					}
				}
				
				alert(arr.join("\n"));
			}
		</script>
	</head>
	
	<body>
		<div>나는 사과를 좋아합니다.</div>
		<input type="button" value="클릭" onclick="sub()"/>
		<br/><br/>
		
		<div id="apple">
			<span></span>
			<span>
				<label></label>
				<label id="hi">안녕하세요.</label>
			</span>
		</div>
		<input type="button" value="클릭" onclick="fun()"/>
		<br/><br/>
		
		 <div id="melon">
			<span>가</span>
			<span>나</span>
			<span>다</span>
		</div>
		<input type="button" value="클릭2" onclick="xyz()"/>
		<br/><br/>
	
		 <div id="banana">
		 	<span >A</span>
		 	<b>B</b>
		 	<label>C</label>
		 </div> 
		<input type="button" value="클릭3" onclick="abc()"/>
		<br/><br/>
	</body>
</html>









