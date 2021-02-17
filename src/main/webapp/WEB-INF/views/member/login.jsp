<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로 그 인</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp" %>
<%@include file="/WEB-INF/views/include/nav.jsp" %>

<div class="w3-content">
	<form method="post">
		<table>
			<tr>
				<td><input type="text" name="id" id="id" class="w3-input w3-opacity" size="20" placeholder="아이디"/></td>
			</tr>
			<tr>
				<td><input type="password" name="pw" id="pw" class="w3-input w3-opacity" size="20" placeholder="비밀번호"/></td>
			</tr>
			<tr>
				<td><input type="button" value="로그인" size="20" id="submitBtn" class="w3-button w3-blue"/></td>
			</tr>
			<tr>
				<td>아이디가 없으시다면? <a href="${contextpath}/member/join">회원가입</a></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	</form>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>