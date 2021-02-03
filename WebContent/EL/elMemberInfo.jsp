<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 예제입니다.</title>
</head>
<body>	
	<jsp:useBean id="member" class="com.java.el.MemberInfo"/>
	${member.setName('이영자')}
	${member.setId("lee1234")}
	${member.setPw("1234")}
	
	<ul>
		<li>이름 : ${member.getName()}</li>
		<li>아이디 : ${member.getId()}</li>
		<li>비밀번호 : ${member.getPw()}</li>
	</ul><br/>
	
	<ul>
		<li>이름 : ${member.name}</li>
		<li>아이디 : ${member.id}</li>
		<li>비밀번호 : ${member.pw}</li>
	</ul>
</body>
</html>







