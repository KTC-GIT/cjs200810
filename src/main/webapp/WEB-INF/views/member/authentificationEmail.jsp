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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#submitBtn").click(function(){
			if($("#email").val()==""){
				alert("이메일을 입력하세요");
			}
			else if($("#emailCheck").val()==""){
				alert("이메일을 한번 더 입력하세요");
			}
			else if($("#email").val()!=$("#emailCheck").val()){
				alert("이메일이 일치하지 않습니다");
			}
			else if($("#ageCheck").is(":checked") == false){
				alert("약관에 동의해주세요");
			}
			else{
				
				var query = $("#myform").serialize();
				
				$.ajax({
					url: "${contextpath}/mail/sendAuthentificationMail",
					type: "post",
					data: query,
					success: function(){
						$(".modal").fadeIn(200);
					},
					error: function(){
						
					}
				});
			}
		});
	});
</script>
<style>
	input[type="text"]{
		padding:20px;
		font-size:20px;
		border-radius:5px;
	}
	td{
		padding:10px;
	}
	.modal{
		display:none;
		position:fixed;
		top:50%; left:50%;
		transform: translate(-50%,-50%);
		max-width: 60%;
		min-height: 40%;
		background: #5a5a5a;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<div class="w3-content w3-center w3-padding-64" style="max-width:2000px;color:#a0a0a0;background-color:#5a5a5a;">
	<form id="myform">
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
	<div class="modal">
		<div class="content">
			<div class="w3-content w3-padding-64" style="max-width:800px;">
				<div style="padding-top:100px;"></div>
				<h2>이메일 인증 대기 중입니다.</h2>
				<h2>이메일 인증하시면 다음 페이지로 넘어갑니다.</h2>
				<div style="padding-top:300px;"></div>
			</div>
		</div>
	</div>
	<div style="padding-bottom:200px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>