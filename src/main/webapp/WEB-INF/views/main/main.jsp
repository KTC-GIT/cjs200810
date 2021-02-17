<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<title>게임리뷰사이트입니다.</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/WEB-INF/views/include/bs.jsp"%>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>
<%@ include file="/WEB-INF/views/include/top.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:0;color:#aaaaaa;background-color:#5a5a5a;">

  <%@include file="/WEB-INF/views/include/slide.jsp" %>

  <!-- column Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px;padding:40px;" id="band">
    <div class="w3-row w3-padding-32">
   	<h2 class="w3-wide" style="text-align:center;">이번 주의 칼럼들</h2>
   	<p><br/></p>
      <div class="w3-third">
      	<a href="javascript:void(0)">
	        <h4>진정한 다크판타지를 느끼고 싶다면..</h4>
	        <img src="${contextpath}/resources/gameImg/darksoul.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%;">
        </a>
      </div>
      <div class="w3-third">
      	<a href="javascript:void(0)">
	        <h4>커다란 몬스터와의 사투!</h4>
	        <img src="${contextpath}/resources/gameImg/iceborne.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%;">
	    </a>
      </div>
      <div class="w3-third">
      	<a href="javascript:void(0)">
	        <h4>99%인데도 빗나간다고??</h4>
	        <img src="${contextpath}/resources/gameImg/xcom-2-cover.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%;">
	    </a>
      </div>
    </div>
  </div>
<%@include file="/WEB-INF/views/include/cr_slide.jsp" %>  
<!-- End Page Content -->
</div>


<%@include file="/WEB-INF/views/include/footer.jsp" %>
<script>
	//Used to toggle the menu on small screens when clicking on the menu button
	function myFunction() {
	  var x = document.getElementById("navDemo");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
	
	// When the user clicks anywhere outside of the modal, close it
	var modal = document.getElementById('ticketModal');
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
</script>
</body>
</html>