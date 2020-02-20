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
session.invalidate();//모든세션을 초기화 시킴
//session.removeAttribute("id"); //개별세션 변수 삭제

%>
세션이 초기화 되었습니다.
<a href="viewSession.jsp">세션 확인</a>
</body>
</html>