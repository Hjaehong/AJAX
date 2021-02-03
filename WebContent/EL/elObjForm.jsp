<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 예제입니다.</title>
</head>
<body>
	<form action="elObjFormOk.jsp" method="post">
		<label>아이디</label>
		<input type="text" name="id"><br/>
		
		<label>비밀번호</label>
		<input type="password" name="pw"/><br/><br/>		
		
		<input type="submit" value="전송"/>
		<input type="reset" value="취소"/>
	</form>
	
	<%
		pageContext.setAttribute("pName", "apple");	       			 // 현재 페이지에서 데이타 공유
		request.setAttribute("rName", "banana");     		  			 // 요청시 데이타 공유, parameter사용 (form, include, forward) 
		                                                                      		 // <c:set var="rName" value="10" scope="request"/> 넣을 예정
		                                                                      	 
		session.setAttribute("sName", "melon");		       				 // 하나의 웹어플리케션 안에서 데이타 공유(웹브라우저 한개당)                                                                       
		application.setAttribute("aName", "strawberry");                // 하나의 웹어플리케션 안에서 데이타 공유(웹서버 꺼질때 까지)
	%>
	
   <ul>
		<li>페이지 영역 : ${pageScope.pName}</li>	 		<!-- 결과안나옴 -->	   
	    <li>요청 영역 : ${requestScope.rName}</li>  			<!-- 결과안나옴 -->			
		<li>어플리케이션 영역 : ${applicationScope.aName}</li>
		<li>세션 영역 : ${sessionScope.sName}</li>
	</ul>
</body>
</html>




