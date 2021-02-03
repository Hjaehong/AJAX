<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 숫자를 문자열로 포맷(형식으로 변환)</h3>
	<c:set var="su" value="12345.678"/>
	
	number:
	<fmt:formatNumber value="${su}" type="number"/>
	
	currency:
	<fmt:formatNumber value="${su}" type="currency"/>
	<fmt:formatNumber value="${su}" type="currency" currencySymbol="$"/>
	
	percent:
	<fmt:formatNumber value="${su}" type="percent"/>
	<br/><br/>
	
	<fmt:formatNumber value="${su}" pattern="###,###.###"/>
	<fmt:formatNumber value="${su}" pattern="###,###.##"/>
	<fmt:formatNumber value="${su}" pattern="###,###"/>
	<br/><br/>
	
	<fmt:formatNumber value="${su}" pattern="000,000.000"/>
	<fmt:formatNumber value="${su}" pattern="000,000.00"/>
	<fmt:formatNumber value="${su}" pattern="000,000"/>
	<br/><br/>
	
	<fmt:formatNumber value="${su}" pattern="###,###.#####"/>
	<fmt:formatNumber value="${su}" pattern="000,000.00000"/>
	<br/><br/>
	
	<fmt:formatNumber var="strValue" value="${su}" pattern="#.0000"/>
	
	<h3>문자열을 숫자 변환</h3>
	<fmt:parseNumber var="pNum" value="${strValue}"/>
	${pNum}

	<h3>정수형 변환</h3>
   	<fmt:parseNumber var="isu" value="${55.7 + 0.5}" integerOnly="true"/>
   	${isu}
   <br/><br/>
   
   <h3>날짜를 문자로 변환</h3>
   <jsp:useBean id="today" class="java.util.Date"/>
   ${today} <br/>
   
   날짜:<fmt:formatDate value="${today}" type="date"/><br/>
   시간:<fmt:formatDate value="${today}" type="time"/><br/>
   날짜시간:<fmt:formatDate value="${today}" type="both"/><br/>
   
   패턴 : <fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm:ss"/>
   <br/><br/>
   
   <h3>문자열을 날짜로 변환</h3>
   <c:set var="nowdate" value="2020-10-01 12:00:27"/>
   <fmt:parseDate value="${nowdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
</body>
</html>





























