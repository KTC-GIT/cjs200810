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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#submitBtn").on("click",function(){
			$("#loginForm").submit();
		});
	});
</script>
<style>
	.btn{
		background:none;
		border:1px solid #d2d2d2;
		border-radius: 5px;
		padding:10px;
		color: #a0a0a0;
		cursor:pointer;
		width:200px;
	}
	
	.btn:hover{
		border: 2px solid white;
	}
	
</style>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp" %>

<div class="w3-content w3-padding-64" style="max-width:2000px;background-color:#5a5a5a;">
	<div style="padding-top:100px;"></div>
	<form id="loginForm" method="post">
		<table style="margin-left:auto;margin-right:auto;">
			<tr>
				<td colspan="2"><input type="text" name="id" id="id" class="w3-input w3-opacity" placeholder="이메일" style="padding:20px;font-size:20px;border-radius: 5px;"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="password" name="pw" id="pw" class="w3-input w3-opacity" placeholder="비밀번호" style="padding:20px;font-size:20px;border-radius: 5px;"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="로그인" id="submitBtn" class="w3-button w3-blue w3-round" style="width:500px;height:70px;font-size:20px;"/></td>
			</tr>
			<tr>
				<td colspan="2" style="padding:10px;"></td>
			</tr>
			<tr>
				<td class="w3-padding-16" style="font-size:17px;color:#a0a0a0;">
					아이디가 없으시다면? 
				</td>
				<td>
					<a href="${contextpath}/member/join">
						<input type="button" value="회원가입" class="btn"/>
					</a>
				</td>
			</tr>
			<tr>
				<td class="w3-padding-16" style="font-size:17px;color:#a0a0a0">
					아이디를 잊어버리셨다면? 
				</td>
				<td>
					<a href="javascript:void(0)">
						<input type="button" value="아이디찾기" class="btn"/>
					</a>
				</td>
			</tr>
			<tr>
				<td class="w3-padding-16" style="font-size:17px;color:#a0a0a0">
					비밀번호를 잊어버리셨다면? 
				</td>
				<td>
					<a href="javascript:void(0)">
						<input type="button" value="비밀번호찾기" class="btn"/>
					</a>
				</td>
			</tr>
		</table>
	</form>
	<div style="padding-bottom:300px;"></div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>