<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<%@include file="/WEB-INF/views/include/nav2.jsp" %>
<div class="w3-content w3-padding-64" style="max-width:2000px;color:#a0a0a0;background-color:#5a5a5a;">
	<h2>관리자 페이지입니다.</h2>
	
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>