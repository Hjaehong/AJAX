/**
 * 
 */
var arr=new Array();
var xhr=null;

function startRequest(){
	// 1. XMLHttpRequest 객체 생성	
	if(window.XMLHttpRequest){
		xhr=new XMLHttpRequest();
	}else{
		xhr=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	// 2. 요청, 서버파일, 비동식
	xhr.open("GET", "xhr.txt", true)             // list.do, write.do
	xhr.send();
	
	// 3. 응답
	xhr.onreadystatechange=resultProcess;
	
	arr.push(xhr);
}

function resultProcess(){
	if(xhr.readyState==4 && xhr.status==200){     // 요청완료, 요청정상적으로 이루어짐
			arr.push(xhr.responseText);
		
			var disp=document.getElementById("disp");
			var span=document.createElement("span")
			span.innerHTML=xhr.responseText;
		
			disp.appendChild(span);

			// alert(arr.join("\n"));
	}
}





