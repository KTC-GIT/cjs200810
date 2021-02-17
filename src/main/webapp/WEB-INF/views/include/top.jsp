<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/include/bs.jsp"%>
<style>
	a{
		text-decoration:none;
	}
</style>
</head>
<body>
<div class="w3-content" style="max-width:2000px;height:100px;color:#aaaaaa;background-color:#3c3c3c;">
	<div class="w3-right">
		<a href = "${contextpath}/member/login">로그인</a> &nbsp; <a href = "${contextpath}/member/join">회원가입</a> 
	</div>
	<div class="w3-left">
		<a href="${contextpath}/main"><img src="${contextpath}/resources/icon/logo.png" alt="logo" width="100px"/></a>
	</div>
</div>
</body>
</html>