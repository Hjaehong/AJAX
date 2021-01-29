/**
 * 
 */
var arr = new Array();
// XMLHTTPRequest 객체 생성
var xhr= null;

function startRequest(){
	
	// XMLHttpRequest을 지원하던 안하던 작동 가능하게
	if(window.XMLHttpRequest){
		xhr=new XMLHttpRequest();
	}else{
		xhr=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	// 2. 요청방식, 서버파일, 비동식
	// 요청
	//		get방식으로 xhr.txt에게 보낸다
	xhr.open("GET", "xhr.txt", true);	// list.do, write.do
	xhr.send();
	
	// 응답
	xhr.onreadystatechange=resultProcess;
	
	arr.push(xhr);
	
	//alert(arr.join("\n"));
}

function resultProcess(){
	// 요청 완료, 요청 정상적으로 이루어짐
	if(xhr.readyState==4 && xhr.status==200){
			arr.push(xhr.responseText);
			
			var disp = document.getElementById("disp");
			var span = document.createElement("span");
			span.innerHTML=xhr.responseText;
			
			disp.appendChild(span);
			
			//alert(arr.join("\n"));
	}
}