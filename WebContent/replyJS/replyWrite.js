/**
 * 
 */
var reqRoot=null;
function writeToServer(root) {
	reqRoot=root;
	
	var writeReply = document.getElementById("writeReply").value;
	var url = root + "/reply/replyWrite.stu";
	var params = "writeReply=" + writeReply;
	arr.push(url + "," + params);
	
	sendRequest("POST", url, writeFromServer, params);
	
	//alert(arr.join("\n"));
}

function writeFromServer(){
	if(xhr.readyState==4 && xhr.status==200){
		var obj=JSON.parse(xhr.responseText);
		var bunho=obj.bunho;
		var reply=obj.writeReply;
		arr.push("bunho" + bunho +  "," + "reply" + reply);
		
		document.getElementById("writeReply").value="";
		
		var listAllDiv=document.getElementById("listAllDiv");
		var div=document.createElement("div");
		div.className="replyDiv";
		div.id=bunho;
		
		var spanBunho=document.createElement("span");
		spanBunho.className="cssBunho";
		spanBunho.innerHTML=bunho;
		
		var spanReply=document.createElement("span");
		spanReply.className="cssReply";
		spanReply.innerHTML=reply;
		
		var spanUpDel=document.createElement("span");
		spanUpDel.className="cssUpDel";
		
		var aDelete=document.createElement("a");
		aDelete.href="javascript:deleteToServer(" + bunho + ",\'" + reqRoot + "\')";
		aDelete.innerHTML="삭제 &nbsp";
		
		var aUpdate=document.createElement("a");
		aUpdate.href="javascript:upSelectToServer(" + bunho + ",\'" + reqRoot + "\')";
		aUpdate.innerHTML="수정";
		
		
		div.appendChild(spanBunho);
		div.appendChild(spanReply);
		div.appendChild(spanUpDel);
		listAllDiv.insertBefore(div, listAllDiv.firstChild);
		
		spanUpDel.appendChild(aDelete);
		spanUpDel.appendChild(aUpdate);
		
	}
	
	//alert(arr.join("\n"));
	
}