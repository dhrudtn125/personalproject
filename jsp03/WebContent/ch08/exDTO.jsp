<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.dto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
MemberDTO dto = new MemberDTO();
dto.setUserid("kim");
dto.setPasswd("1234");
dto.setName("김철수");
dto.setEmail("kim@naver.com");
dto.setAddress1("서울 강동구 천호동");
%>
<c:set var="dto" value="<%=dto %>" scope="request"/>

<jsp:forward page="exDTO_result.jsp"></jsp:forward>
</body>
</html>