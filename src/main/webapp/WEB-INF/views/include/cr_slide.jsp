<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- community recommend (추천수가 높은 게임을 보여줌)-->
<div class="w3-content" style="padding:40px;">
	<p><br/></p>
	<h2 class="w3-wide w3-center">커뮤니티 추천</h2>
     <p class="w3-opacity w3-center"><i>취향에 맞는 게임을 찾을 수 있을지도 몰라요!</i></p><br>
<!-- Automatic Slideshow Images -->
  
  <div class="mySlides2 w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/darksoul.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
  <div class="mySlides2 w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/iceborne.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
  <div class="mySlides2 w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/xcom-2-cover.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
</div>
   <script>
	// Automatic Slideshow - change image every 4 seconds
	var cr_myIndex = 0;
	cr_carousel();
	
	function cr_carousel() {
	  var i;
	  var x = document.getElementsByClassName("mySlides2");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
	  cr_myIndex++;
	  if (cr_myIndex > x.length) {cr_myIndex = 1}    
	  x[cr_myIndex-1].style.display = "block";  
	  setTimeout(cr_carousel, 4000);    
	}
	
	</script> 
</body>
</html>