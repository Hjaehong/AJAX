<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 예제입니다.</title>
<style type="text/css">
	body{ 
		font-size: 13px;
		font-family: 맑은 고딕;
	}	
</style>
</head>
<body>
		<%--
				EL(Expression Language) 
				 1) 표현식 <%= %> 보다 간결하고 편리하기 때문에 많이 사용 (연산자, 데이터 사용 가능)
				 2) getProperty 대신해서 사용
				 3) 기본객체(즉 내장객체)를 가지고 있다. 
				    3-1) JSP 저장객체 : pageScope, requestScope, sessionScope, applicationScope
				    3-2) HTPP 요청 파리미터 : param, paramValue
				    3-3) JSP 객체 : header, headerValues, initParam, cookie, pageContext	
		--%> 
		
		<h3> EL - 1. 표현식 보다 간결하고 편리하기 때문에 많이 사용 (연산자, 데이터 사용 가능) </h3><br/>
		<ol>
			<li>수 출력 : ${10}, ${99.99}</li>
			<li>문자 출력 : ${'appl'}, ${"apple"}</li>			
			<li>덧셈 : ${2+5}</li>
			<li>나눗셈 : ${4/5}</li>
			<li>나머지 : ${5%7}</li>
			<li>보다 작다 : ${2<3}, ${2 lt 3}</li>					<!-- 결과 true, false -->
			<li>크다 : ${2>3}, ${2 gt 3}</li>
			<li>작거나 같다 : ${3.1 <= 3.2}, ${3.1 le 3.2} </li>
			<li>크거나나 같다 : ${3.1 >= 3.2}, ${3.1 ge 3.2} </li>
			<li>논리연산자 : ${"&&(AND), ||(OR), !(NOT)"}</li>
			<li>빈문자열 : ${null}</li>
		</ol>
</body>
</html>