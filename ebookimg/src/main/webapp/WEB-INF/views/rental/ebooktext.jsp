<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="com.a.b.dto.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.a.b.dao.EDao" %>
<%@ page import="com.a.b.dao.MDao" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>이북텍스트</title>
</head>
<body>
		이북텍스트가 나오는곳...
		
		
${ebook_text.bBookno}
${ebook_text.bRealContent}

<%= request.getAttribute("txt1") %>
		
		
		
		
		
</body>
</html>