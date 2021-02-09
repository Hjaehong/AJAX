/**
 * 
 */

function deleteToServer(bunho, root){
	var url=root+"/reply/replyDelete.stu";
	var params ="bunho=" + bunho;
	
	sendRequest("GET", url, deleteFromServer, params);
}

function deleteFromServer(){
	if(xhr.readyState==4 && xhr.status==200){
		var bunho = xhr.responseText;		
		var div=document.getElementById(bunho);
		
		var listAllDiv=document.getElementById("listAllDiv");
		listAllDiv.removeChild(div);
	}
	
	
}