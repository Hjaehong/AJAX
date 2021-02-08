<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(root){
		var createForm=document.getElementById("createForm");
		var selectText=createForm.departmentName.value;
		var url=root + "/sawon/listOk.stu";
		arr.push(selectText + "\n" + root);
		
		if(selectText !="부서를 선택하세요."){
			var params="departmentName=" + selectText
			sendRequest("GET", url, fromServer, params);
		}
	}
	
	function fromServer(){
		if(xhr.readyState==4 && xhr.status==200){
			var obj=JSON.parse(xhr.responseText);
			arr.push(obj.sawon.length);
			
			var disp=document.getElementById("disp");
			disp.innerHTML="";
			
			for(var i=0;i<obj.sawon.length;i++){
				var tr = document.createElement("tr");
				
				var str="<td width='100' align='center'>"+ obj.sawon[i].employee_id +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].first_name +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].hire_date +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].job_id +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].salary +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].department_id +"</td>";
				str+="<td width='100' align='center'>"+ obj.sawon[i].department_name +"</td>";
				
				tr.innnerHTML=str;
				disp.appendChild(tr);
			}
		}
		//alert(arr.join("\n"));
	}
</script>
</head>
<body>
	<form id="createForm">
		<select onchange="toServer('${root}')" name="departmentName">
			<option>부서를 선택하세요.</option>
			<c:forEach var="dept" items="${deptList}">
				<option>${dept.department_name}</option>
			</c:forEach>
		</select>
	</form>
	<br/>	

	<div>
		<table border="1">
			<tr>
				<td align="center" bgcolor="#DEDEDE" width="100">사번</td>
				<td align="center" bgcolor="#DEDEDE" width="100">이름</td>
				<td align="center" bgcolor="#DEDEDE" width="100">입사일</td>
				<td align="center" bgcolor="#DEDEDE" width="100">직종</td>
				<td align="center" bgcolor="#DEDEDE" width="100">급여</td>
				<td align="center" bgcolor="#DEDEDE" width="100">부서번호</td>
				<td align="center" bgcolor="#DEDEDE" width="100">부서명</td>
			</tr>
		</table>
		
		<table border="1" id="disp"></table>
	</div>
</body>
</html>