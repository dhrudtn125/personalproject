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
<c:set var="userid" value="kim" scope="session"/>
<c:set var="name" value="김철수" scope="session"/>
<c:set var="age" value="20" scope="session"/>
<c:set var="job" value="dba" scope="session"/>
<c:set var="addr" value="서울시 강동구 천호동" scope="session"/>
세션 변수가 생성되었습니다 
<a href="exEL_result.jsp">확인</a>
</body>
</html>