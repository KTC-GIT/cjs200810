<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증 대기</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<div class="w3-content w3-padding-64" style="max-width:2000px;">
	<div style="padding-top:100px;"></div>
	<h2>이메일 인증 대기 중입니다.</h2>
	<h2>이메일 인증하시면 다음 페이지로 넘어갑니다.</h2>
	<div style="padding-top:300px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>