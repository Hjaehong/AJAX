/**
 * 
 */

var arr = new Array(); 

function sendRequest(method, url, callback, params) {
	var httpMethod = method.toUpperCase();
	if(httpMethod != "GET" && httpMethod != "POST") {
		httpMethod = "GET";
	}
	arr.push(httpMethod);
	
	var httpParams = (params == null || params =="")? null:params;
	arr.push(httpParams);
	
	var httpUrl = url;
	if(httpMethod =="GET" && httpParams !=null) {
		httpUrl += "?" + httpParams;
	}
	arr.push(httpUrl);
	
	alert(arr.join("\n"));
}
