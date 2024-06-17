﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	<h3>산술연산</h3>
	
	<!-- 산술연산 -->
	<ul>
		<li>${iVal + 10 * 100 / 2 }</li>
		<li>${fVal + 10 * 100 / 2 }</li>
	</ul>
	
	<!-- 비교 연산 -->
	<ul>
		<li>${iVal < 100 }</li>
	</ul>
	
	<!-- 논리 연산 -->
	<ul>
		<li>${iVal == 1000 || fVal < 200 }</li>
	</ul>
	
	<!-- 객체의 null 비교 -->
	<ul>
		<li>reqVal이 null인가? ${empty reqVal }</li>
		<li>userVo가 null이 아닌가? ${not empty userVo }</li>
	</ul>
	
	</p>
</body>
</html>