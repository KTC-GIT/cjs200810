<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증 실패</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp" %>
<div class="w3-content w3-padding-64 w3-center" style="max-width:2000px;background:#5a5a5a;color:white;">
	<div style="padding-top:100px;"></div>
		<h1 class="w3-wide">이메일 인증 실패</h1>
		<table class="w3-content" style="font-size:20px;">
			<tr><td style="padding-bottom:40px;"></td></tr>
			<tr><td style="font-size:25px;">이메일 인증이 정상적으로 이루어지지 않았습니다.</td></tr>
			<tr><td style="padding-bottom:30px;"></td></tr>
			<tr><td>다음 목록을 확인해보세요</td></tr>
			<tr><td style="padding-bottom:20px;"></td></tr>
			<tr><td style="font-weight:bolder;">1. 이미 이메일을 인증하셨나요?</td></tr>
			<tr><td>★인증한 아이디로 로그인 해 주세요</td></tr>
			<tr><td style="padding-bottom:10px;"></td></tr>
			<tr><td style="font-weight:bolder;">2. 이메일을 잘못 입력하셨나요?</td></tr>
			<tr><td>★가입절차를 다시 진행해주세요</td></tr>
			<tr><td style="padding-bottom:10px;"></td></tr>
			<tr><td style="font-weight:bolder;">3. 위의 두가지 문제를 확인했는데도 메일이 오지 않나요?</td></tr>
			<tr><td>★보안문제로 스팸메일함에 메일이 있을 수도 있습니다</td></tr>
		</table>
	<div style="padding-bottom:300px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>