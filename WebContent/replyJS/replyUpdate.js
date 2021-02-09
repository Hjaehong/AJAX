/**
 * 
 */

function upSelectToServer(bunho, root){
	var url = root + "/reply/replySelect.stu";
	var params = "bunho=" + bunho;
	
	sendRequest("GET", url, upSelectFromServer, params);
}

function upSelectFromServer(){
	if(xhr.readyState==4 && xhr.status==200){
		var obj = JSON.parse(xhr.responseText);
		var bunho = obj.bunho;
		var reply = obj.reply;
		
		arr.push("bunho : " + bunho + ", reply : " + reply);
		
		alert(arr.join("\n"));
	}
}
