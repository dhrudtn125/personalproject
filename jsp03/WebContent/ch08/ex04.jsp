<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%-- <%
session.setAttribute("name", "김철수");
session.setAttribute("age", 20);
session.setAttribute("job", "dba");
session.setAttribute("addr", "서울 서대문구 북아현동");
%> --%>

<c:set var="name" value="김철수" scope="session"/>
<c:set var="age" value="20" scope="session"/>
<c:set var="job" value="DBA" scope="session"/>
<c:set var="addr" value="서울시 서대문구 북아현동" scope="session"/>
세션 변수가 생성되었습니다 
<a href="ex04_result.jsp">확인</a>
</body>
</html>