<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="com.a.b.dto.*"%>
<%@ page import="org.apache.ibatis.session.SqlSession"%>
<%@ page import="com.a.b.service.*" %>
<%@ page import="com.a.b.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="resources/css/main_css.css">
</head>
<body>
		<%@include file="../home.jsp"%>
	<div align="center">
	<%
		Member vo = (Member)session.getAttribute("joinVo");
	%>
	<br>
	<br>
	<br>
		<h1><%=vo.getbId() %> 회원 정보</h1>
		<table border="1" width="30% align="center">
				<tr>
					<th><h5 align="center">회원등급</h5></th>
					<td colspan="2"><h5 align="center">${grade.grade}</h5></td>
				</tr>
				<tr>
					<th><h5 align="center">이름</h5></th>
					<td colspan="2"><h5 align="center"><%=vo.getbName() %></h5></td>
				</tr>
				<tr>
					<th><h5 align="center">생년월일</h5></th>
					<td colspan="2"><h5 align="center"><%=vo.getbBirthday() %></h5></td>
				</tr>
				<tr>
					<th><h5 align="center">가입일자</h5></th>
					<td colspan="2"><h5 align="center"><%=vo.getbJoindate() %></h5></td>
				<tr>
					<th><h5 align="center">잔액</h5></th>
					<td clospan="2"><h5 align="center"><%=vo.getbCash() %></h5></td>
					<td align="center">
					<input type="button" width="100%" class="btn btn-primary" onclick="location.href='cashup'" value="충전"> 
					</td>
				<tr>
					<td colspan="3" align="center">
					<input type="button" class="btn btn-primary" onclick="location.href='memmodify?bId=<%=vo.getbId() %>'" value="정보 수정"> 
					&nbsp;&nbsp; &nbsp;&nbsp;
					<input type="button" class="btn btn-primary" onclick="location.href='memdelete?bId=<%=vo.getbId() %>'" value="회원 탈퇴">
					</td>
				</tr>
			</form>
		</table>
	</div>
	<footer>
		<div class="fixed">
	<%@include file="../bottom.jsp"%>
		</div>
	</footer>
</body>
</html>
