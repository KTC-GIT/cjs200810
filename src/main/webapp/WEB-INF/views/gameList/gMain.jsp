<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 리스트</title>
</head>
<body>
<%@include file="/WEB-INF/views/include/top.jsp"%>
<%@include file="/WEB-INF/views/include/nav.jsp" %>
<div class="w3-content w3-padding-64" style="max-width:2000px;background-color:#5a5a5a;color:#a0a0a0;">
	<h2 class="w3-wide w3-center">게임 항목</h2>
	<div style="padding-top:100px;"></div>
	<table style="margin-left:auto;margin-right:auto">
		<c:choose>
			<c:when test="${list!=null}">
			<c:forEach var="vo" items="${list}">
				<tr>
					<td><img src="${vo.thumb}" width="70px" height="70px"/></td>
					<td>${vo.title}</td>
					<td>${vo.publishingDate}</td>
					<td>긍정적</td>
				</tr>
			</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td>일치하는 게임 항목이 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
		<tr>
			<td style="padding-bottom:50px;                            22222222222222222222222"></td>
		</tr>
		<c:if test="${id=='admin'}">
			<tr>
				<td style="text-align:right;"><a href="${contextpath}/gameList/addList"><button class="w3-button w3-blue">리스트 등록하기</button></a></td>
			</tr>
		</c:if>
	</table>
	<div style="padding-top:500px;"></div>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>