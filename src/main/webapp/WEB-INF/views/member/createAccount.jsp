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
			if($("#id").val()==""){
				alert("아이디를 입력하세요");
				$("#id").focus();
			}
			else if($("#id").val().length<5 || $("#id").val().length>20){
				alert("아이디는 5자리 이상 20자리 이하여야합니다.");
				$("#id").focus();
			}
			else if($("#pw").val()==""){
				alert("비밀번호를 입력하세요");
				$("#pw").focus();
			}
			else if($("#pw").val().length<4 || $("#pw").val().length>20){
				alert("비밀번호는 4자리 이상 20자리 이하여야 합니다.");
				$("#pw").focus();
			}
			else if($("#pwCheck").val()==""){
				alert("비밀번호를 다시 입력하세요");
				$("#pwCheck").focus();
			}
			else if($("#pw").val()!=$("#pwCheck").val()){
				alert("비밀번호가 일치하지 않습니다.");
			}
			else if($("#nick").val()==""){
				alert("닉네임을 입력하세요");
				$("#nick").focus();
			}
			else if($("#nick").val().length<1 || $("#nick").val().length>20){
				alert("닉네임은  1자 이상 20자 이하여야 합니다.")
			}
			else if($("#email").val()==""){
				alert("이메일을 입력하세요");
				$("#email").focus();
			}
			else if($("#emailCheck").val()==""){
				alert("이메일을 한번 더 입력하세요");
				$("#emailCheck").focus();
			}
			else if($("#email").val()!=$("#emailCheck").val()){
				alert("이메일이 일치하지 않습니다");
			}
			else if($("#ageCheck").is(":checked") == false){
				alert("약관에 동의해주세요");
				
			}
			else{
				$("#myform").submit();
				
			}
		});
	});
</script>
<style>
	input[type="text"],input[type="password"]{
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
	<form id="myform" method="post">
		<table style="margin-left:auto;margin-right:auto;">
			<tr>
				<td><h2 class="w3-wide">계정 만들기</h2></td>
			</tr>
			<tr>
				<td><input type="text" id="id" name="id" class="w3-input w3-opacity" placeholder="아이디"/></td>
			</tr>
			<tr>
				<td><input type="password" id="pw" name="pw" class="w3-input w3-opacity" placeholder="비밀번호"/></td>
			</tr>
			<tr>
				<td><input type="password" id="pwCheck" class="w3-input w3-opacity" placeholder="비밀번호 다시 입력"/></td>
			</tr>
			<tr>
				<td id="correctOrNot" style="padding:10px;"></td>
			</tr>
			<tr>
				<td><input type="text" id="nick" name="nick" class="w3-input w3-opacity" placeholder="닉네임"/></td>
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
				<td><input type="checkbox" id="ageCheck" value="1" class="w3-check"/>&nbsp;본인은 만 13세 이상이며, <a href="javascript:void(0)" style="color:#00008C;">본 사이트의 약관</a>에 동의합니다.</td>
			</tr>
			<tr>
				<td><input type="button" value="회원가입" id="submitBtn" class="w3-button w3-round w3-blue" style="width:300px;height:70px;font-size:20px;"></td>
			</tr>
		</table>
	</form>
	<div style="padding-bottom:200px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>