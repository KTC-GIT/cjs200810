<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/include/bs.jsp" %>
</head>
<body>
<!-- Navbar -->
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="${contextpath}/main" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="${contextpath}/admin/memberList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">회원관리</a>
    <a href="${contextpath}/admin/gameList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">게임리스트 관리</a>
    <a href="${contextpath}/admin/columnList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">칼럼관리</a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">Merchandise</a>
        <a href="#" class="w3-bar-item w3-button">Extras</a>
        <a href="#" class="w3-bar-item w3-button">Media</a>
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium" style="margin-top:46px">
  <a href="${contextpath}/admin/memberList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">회원관리</a>
  <a href="${contextpath}/admin/gameList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">게임리스트관리</a>
  <a href="${contextpath}/admin/columnList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">칼럼관리</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>

</body>
</html>