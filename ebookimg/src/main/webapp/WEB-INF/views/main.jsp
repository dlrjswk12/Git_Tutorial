<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.a.b.dto.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리</title>
<link rel="stylesheet" href="resources/css/main_css.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script src="/script/jquery-3.js"></script>
<style>
</style>
</head>
<body>
	<header>
	<%@include file="home.jsp"%>
	</header>
		<div id="container" align="center" style="height: 600px;">
			<div class="cycle-slideshow" data-cycle-fx="scrollHorz" data-cycle-timeout="2000" data-cycle-pause-on-hover="true"
			style="overflow: hidden;height: 300px; width:100%;">
			<img src="<spring:url value ='/resources/img/main/main.jpg'/>" alt="banner1" height="300px">
			<img src="<spring:url value ='/resources/img/main/main1.jpg'/>" alt="banner2" height="300px"> 
			<img src="<spring:url value ='/resources/img/main/main2.jpg'/>" alt="banner3" height="300px"> 
			</div>
			<div class="left">
				<br>
				<h3 align="center">신규 도서</h3>
				<table border="0" width="100%" height="100%">
				<c:forEach items="${newbook}" var="newbook" end="2">
					<th colspan="4"><a href ="ebookcontentview?bId=${newbook.bBookname}">
					<img src="<spring:url value ='http://121.153.134.167/ebook/${newbook.bUrl}'/>" height="80px"></a></th>
				<tr>
					<th><h6><a href="ebookcontentview?bId=${newbook.bBookname}">${newbook.bBookname}</a><br>
					${newbook.bWriter}</h6>
				</tr>
				</c:forEach>
				</table>
			</div>
			<div class="main">
			<br>
			<h3 align="center">최근 인기 도서</h3>
				<table border="0" width="100%" height="100%">
				<c:forEach items="${hotbook}" var="hot" end="2">
					<th colspan="4"><a href ="ebookcontentview?bId=${hot.bBookname}">
					<img src="<spring:url value ='http://121.153.134.167/ebook/${hot.bUrl}'/>" height="80px"></a></th>
				<tr>
					<td><h6><a href="ebookcontentview?bId=${hot.bBookname}">${hot.bBookname}</a><br>
					${hot.bWriter}</h6></td>
				</tr>
				</c:forEach>
				</table>
			</div>
			<div class="right">
			<br>
				<h3 align="center">추천 도서</h3>
				<table border="0" width="100%" height="100%">
				<c:forEach items="${bestbook}" var="bestbook" end="2">
					<th colspan="4"><a href ="ebookcontentview?bId=${bestbook.bBookname}">
					<img src="<spring:url value ='http://121.153.134.167/ebook/${bestbook.bUrl}'/>" height="80px"></a></th>
				<tr>
					<td><h6><a href="ebookcontentview?bId=${bestbook.bBookname}">${bestbook.bBookname}</a><br>
					${bestbook.bWriter}</h6></td>
				</tr>
				</c:forEach>
				</table>
			</div>
				<br>
		</div>
		<br>
		<br>
		<footer>
		<div class="fixed">
	<%@include file="bottom.jsp"%>
		</div>
		</footer>
</body>
</html>
