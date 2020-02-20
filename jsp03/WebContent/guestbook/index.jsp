<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
</head>
<body>
<%
//컨텍스트 패스 (웨 프로젝트의 식별자)
String context=request.getContextPath();
//컨트롤러로 이동 , post를 명시 안하면 get방식으로 됨 
response.sendRedirect(context+"/guestbook_servlet/list.do");
%>

</body>
</html>