﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	<h2>el</h2>                 
	<h3>Scope Test 1 (requestScope)</h3>
	<!-- 요청의 속성에 접근하는 방법 -->
	<ul>
		<li>RequestScope : ${requestScope.userVo.no }</li>	
		<li>RequestScope : ${requestScope.userVo.name }</li>
		<li>RequestScope : ${requestScope.userVo.email }</li>
		<li>RequestScope : ${requestScope.userVo.password }</li>
		<li>RequestScope : ${requestScope.userVo.gender }</li>
	
	</ul>
	
	
	
	
</body>
</html>