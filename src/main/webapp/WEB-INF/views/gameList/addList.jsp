<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 추가</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	input[type="text"]{
		width:200px;
		height:30px;
		font-size:8px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<div class="w3-content w3-padding-64" style="max-width:2000px;color:#a0a0a0;background-color:#5a5a5a;">
	<div style="padding-top:100px;"></div>
	<form method="post">
		<table>
			<tr>
				<td>게임 타이틀</td>
				<td><input type="text" id="title" name="title" class="w3-input"/></td>
			</tr>
			<tr>
				<td>출시날짜</td>
				<td><input type="text" id="publishingDate" name="publishingDate" class="w3-input"/></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><input type="text" id="genre" name="genre" class="w3-input"/></td>
			</tr>
			<tr>
				<td>개발자</td>
				<td><input type="text" id="developer" name="developer" class="w3-input"/></td>
			</tr>
			<tr>
				<td>배급사</td>
				<td><input type="text" id="publisher" name="publisher" class="w3-input"/></td>
			</tr>
			<tr>
				<td>프랜차이즈</td>
				<td><input type="text" id="franchise" name="franchise" class="w3-input"/></td>
			</tr>
			<tr>
				<td>지원 언어</td>
				<td><input type="text" id="languages" name="languages" class="w3-input"/></td>
			</tr>
			<tr>
				<td>썸네일 지정</td>
				<td><input type="text" id="thumb" name="thumb" class="w3-input"/></td>
			</tr>
			<tr>
				<td>상세 설명</td>
				<td><textarea rows="50" cols="50"></textarea></td>
			</tr>
			<tr>
				<td><input type="button" id="submitBtn" value="등록"/></td>
			</tr>
		</table>
	</form>	
	<div style="padding-bottom:400px"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>