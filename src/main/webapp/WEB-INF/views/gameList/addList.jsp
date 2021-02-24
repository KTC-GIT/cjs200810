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
<script src="/resources/ckeditor/ckeditor.js"></script>
<script>
	$(document).ready(function(){
		CKEDITOR.replace('content',{
			width:'600px',
			height:'700px',
			filebrowserUploadUrl:'${contextpath}/file/gameListImgUpload'
		});
	});
</script>
<style>
	input[type="text"]{
		width:500px;
		height:50px;
		font-size:20px;
	}
	td{
		padding:10px;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<div class="w3-content w3-padding-64" style="max-width:2000px;color:#a0a0a0;background-color:#5a5a5a;font-size:20px;">
	<div class="w3-center">
		<h2>리스트 등록</h2>
	</div>
	<div style="padding-bottom:30px;"></div>
	<form method="post">
		<table style="margin-left:auto;margin-right:auto;">
			<tr>
				<td>게임 타이틀</td>
				<td><input type="text" id="title" name="title" class="w3-input w3-opacity"/></td>
			</tr>
			<tr>
				<td>출시날짜</td>
				<td><input type="text" id="publishingDate" name="publishingDate" class="w3-input w3-opacity" placeholder="yyyy-MM-dd의 형식으로 입력할 것"/></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><input type="text" id="genre" name="genre" class="w3-input w3-opacity"/></td>
			</tr>
			<tr>
				<td>개발자</td>
				<td><input type="text" id="developer" name="developer" class="w3-input w3-opacity"/></td>
			</tr>
			<tr>
				<td>배급사</td>
				<td><input type="text" id="publisher" name="publisher" class="w3-input w3-opacity"/></td>
			</tr>
			<tr>
				<td>프랜차이즈</td>
				<td><input type="text" id="franchise" name="franchise" class="w3-input w3-opacity" placeholder="없다면 공백으로 두기"/></td>
			</tr>
			<tr>
				<td>지원 언어</td>
				<td>
					<input type="checkbox" id="languages" name="languages" value="한국어" class="w3-check">한국어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="영어" class="w3-check">영어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="일본어" class="w3-check">일본어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="중국어" class="w3-check">중국어&nbsp;
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="checkbox" id="languages" name="languages" value="프랑스어" class="w3-check">프랑스어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="독일어" class="w3-check">독일어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="스페인어" class="w3-check">스페인어&nbsp;
					<input type="checkbox" id="languages" name="languages" value="포르투갈어" class="w3-check">포르투갈어&nbsp;
				</td>
			</tr>
			<tr>
				<td>썸네일 지정</td>
				<td><input type="file" id="thumb" name="thumb" class="w3-input w3-opacity" accept="image/*"/></td>
			</tr>
			<tr>
				<td id="preview"></td>
			</tr>
			<tr>
				<td>상세 설명</td>
				<td><textarea id="content" name="content"></textarea></td>
			</tr>
			<tr>
				<td style="padding-bottom:30px;"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:right;"><input type="button" id="submitBtn" value="등록" class="w3-button w3-blue"/></td>
			</tr>
		</table>
	</form>	
	<div style="padding-bottom:400px"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>