/**
 * 
 */

function writeToServer(root) {
	var writeReply = document.getElementById("writeReply").value;
	var url = root + "/reply/replyWrite.stu";
	var params = "writeReply=" + writeReply;
	arr.push(url + "	,	" + params);
	
	sendRequest("POST", url, writeFromServer, params);
	
	alert(arr.join("\n"));
}

function writeFromServer(){
//	alert(arr.join("\n"));
	
}