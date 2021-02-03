<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 예제입니다.</title>
</head>
<body>
    <h3 style="color:red">3. EL 내장객체 - HTPP 요청 파리미터 (param, paramValues)</h3>
	<ul>
		<li>아이디 : ${param.id} &nbsp;&nbsp;  비밀번호 : ${param.pw}</li>
		<li>아이디 : ${param["id"]} &nbsp;&nbsp;  비밀번호 : ${param["pw"]}</li>
	</ul>
	
	<h3 style="color:red">4. EL 내장객체 - JSP 저장객체 (pageScope, requestScope, sessionScope, applicationScope)</h3>
	<ul>
		<li>페이지 영역 : ${pageScope.pName}</li>	 		<!-- 결과안나옴 -->	   
	    <li>요청 영역 : ${requestScope.rName}</li>  			<!-- 결과안나옴 -->			
		<li>어플리케이션 영역 : ${applicationScope.aName}</li>
		<li>세션 영역 : ${sessionScope.sName}</li>
	</ul>
	
	<h3 style="color:red">5. EL 내장객체 - JSP 객체 (header, headerValues, initParam, cookie, pageContext)</h3>
	<!-- 더 추가 -->
	<ul>
		<li>내장함수 IP와 PORT번호: ${header.host}</li>
		<li>브라켓연산자[IP와 PORT번호]: ${header["host"]}</li>
	</ul>
</body>
</html>






