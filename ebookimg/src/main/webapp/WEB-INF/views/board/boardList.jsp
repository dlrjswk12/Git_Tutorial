<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="com.a.b.dao.*"%>
<%@ page import="com.a.b.dto.*"%>
<%@ page import="com.a.b.service.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="resources/css/main_css.css">

<!-- 페이지처리서비스 -->
<%
	String pageNumberStr = request.getParameter("xpage");
	BoardListService service = new BoardListService();

int pageNumber = 1;
if (pageNumberStr != null) {
	pageNumber = Integer.parseInt(pageNumberStr);
}
MessageListView viewData = service.getMessageListView(pageNumber);

List<Board> subList = viewData.getMessageList();
%>

</head>
<body>
	<%@include file="../home.jsp"%>

	<%
		String vo = (String) session.getAttribute("id");
	%>
	<!-- ㅇㅇ -->
	<br>
	<br>

		<div id="board" class="container">

			<table width="70" align="center" class="table table-dark table-striped table-hover">
				<tr height="30">
					<td>글번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>

				<c:forEach items="<%=subList%>" var="dto">

					<tr>
						<td>${dto.bBid}</td>
						<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach> <a
							href="boardContent_view?bBid=${dto.bBid}">${dto.bTitle}</a></td>
						<td>${dto.bId}</td>
						<td>${dto.bDate}</td>
						<td>${dto.bHit}</td>
					</tr>
					
				</c:forEach>

			</table>
		</div>
		
		<div>
		
		<div id="writeform" align="right" class="container">
				<button type="button" class="btn btn-success">
					<a href="boardWrite_view">글쓰기</a>
				</button>
		</div>
		
		<!-- 페이지 넘버 부분 -->
	
		<div id="pageForm" align="center">
			
				<% if(pageNumber>10){
			int tenNum2 = pageNumber / 10;
			if(pageNumber % 10 == 0 && pageNumber > 9)tenNum2 -= 1;
			%>
				<a href="boardList?xpage=<%=(tenNum2*10)-9%>">[이전]</a>
				<% } %>
			 
			<%
			for (int i = 1; i <= viewData.getPageTotalCount(); i++) {
				
				int tenNum = pageNumber / 10;
				if(pageNumber % 10 == 0 && pageNumber > 9)tenNum -= 1;
				if(viewData.getPageTotalCount()==i+(tenNum*10-1))break;
				
				if(11>i){%>
				<a href="boardList?xpage=<%=i+(tenNum*10)%>">[<%=i+(tenNum*10)%>]</a>
					<%
					 }else{
					%>
				<a href="boardList?xpage=<%=i+(tenNum*10)%>">[다음]</a>
				 	 <% break;
					} 
				}
				%>
			
		</div>
		
		<br>
		
		<!-- 검색 부분 -->
		<div id="searchForm">
			<form method="post" action="boardsearch" align="center">
				<select name="opt">
					<option value="all">전체</option>
					<option value="Title">제목</option>
					<option value="Content">내용</option>
					<option value="Id">작성자</option>
				</select> 
				
				<input type="text" size="20" name="search" />&nbsp; 
				<input type="submit" value="검색" />
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer>
		<div class="fixed">
	<%@include file="../bottom.jsp"%>
		</div>
	</footer>
</body>
</html>


