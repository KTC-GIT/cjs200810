<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회 원 가 입</title>
<style>
	input[type="text"]{
		padding:20px;
		font-size:20px;
		border-radius:5px;
	}
	td{
		padding:10px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<div class="w3-content w3-center w3-padding-64" style="max-width:2000px;color:#a0a0a0;background-color:#5a5a5a;">
	<form method="POST">
		<table style="margin-left:auto;margin-right:auto;">
			<tr>
				<td><h2 class="w3-wide">계정 만들기</h2></td>
			</tr>
			<tr>
				<td><input type="text" id="email" name="email" class="w3-input w3-opacity" placeholder="이메일 주소 입력"/></td>
			</tr>
			<tr>
				<td><input type="text" id="emailCheck" class="w3-input w3-opacity" placeholder="이메일 주소 다시 입력"/></td>
			</tr>
			<tr>
				<td><!-- google reCAPCHA자리 --></td>
			</tr>
			<tr>
				<td><input type="checkbox" id="ageCheck" name="ageCheck" value="1" class="w3-check"/>&nbsp;본인은 만 13세 이상이며, <a href="javascript:void(0)" style="color:#00008C;">본 사이트의 약관</a>에 동의합니다.</td>
			</tr>
			<tr>
				<td><input type="button" value="계속하기" id="submitBtn" class="w3-button w3-round w3-blue" style="width:300px;height:70px;font-size:20px;"></td>
			</tr>
		</table>
	</form>
	<div style="padding-bottom:200px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>