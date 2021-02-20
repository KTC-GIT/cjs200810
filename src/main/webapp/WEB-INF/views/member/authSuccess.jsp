<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증 성공</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp" %>
<div class="w3-content w3-padding-64" style="max-width:2000px;background:#5a5a5a;">
	<div style="top:-50%;left:-50%;">
		<div style="padding-top:100px;"></div>
			<h2 class="w3-wide">이메일 인증 성공!</h2>
			<div style="font-size:20px;">이메일 인증에 성공하셨습니다. 이제 로그인이 가능합니다</div>
		<div style="padding-bottom:300px;"></div>
	</div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>