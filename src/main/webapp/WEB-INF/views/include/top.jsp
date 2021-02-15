<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/include/bs.jsp"%>
</head>
<body>
<div class="w3-content w3-center" style="max-width:800px;">
	<div class="w3-right">
		<a href = "javascript:void(0)">로그인</a> | <a href = "javascript:void(0)">회원가입</a> 
	</div>
	<p><br/></p>
	<div class="w3-left">
		<img src="${contextpath}/resources/icon/logo.png" alt="logo" width="100px"/>
	</div>
</div>
</body>
</html>