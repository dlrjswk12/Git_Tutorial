<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.a.b.dao.*"%>
<%@ page import="com.a.b.dto.*"%>
<%@ page import="com.a.b.service.*"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<link rel="stylesheet" href="resources/css/main_css.css">
</head>
<body>
	<%
		List<Board> idsearch = (List<Board>)session.getAttribute("sear_result");
	%>
	<header>
	<%@include file="./home.jsp"%>
	</header>
	<br>
	<h1 align="center">검색결과</h1>
	<br>
	<br>
	<table border='1' width="70" align="center" class="table table-dark table-striped table-hover">
	<%
		if(idsearch.equals(null)){
	%>
	
	<h3 align="center">찾으시는 글이 없습니다.</h3>
	
	<%
		}else{
	%>
	<tr align="center">
		<th>글번호</th>
		<th>제목</th>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
		<c:forEach items="${sear_result}" var="search">
	<tr>
		<td align="center">${search.bBid}</td>
		<td align="center"><a href="boardContent_view?bBid=${search.bBid}">${search.bTitle}</a></td>
		<td align="center">${search.bId}</td>
		<td align="center">${search.bDate}</td>
		<td align="center">${search.bHit}</td>	
	</tr>
	</c:forEach>
	</table>
	<%
		}
	%>
		
		<div id="topform">
			<br>

			<td colspan="5">
				<button type="button" class="btn btn-success">
					<a href="boardWrite_view">글쓰기</a>
				</button>
			</td>

		</div>	
		
		<br>
		
		<form action="boardsearch" method="post" align="center">
		<select name="opt">
			<option value="all">전체</option>
			<option value="Title">제목</option>
			<option value="Content">내용</option>
			<option value="Id">작성자</option>
		</select>
		<input type="text" name="search" size="55%">
		<input type="submit" value="검색">
	</form>
	<br>
	<br>
	<footer>
		<div class="fixed">

	<%@include file="./bottom.jsp"%>
		</div>
	</footer>
</body>
</html>