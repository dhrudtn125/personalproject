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
<%-- <%@ page import="member.MemberDTO" %>
<%
MemberDTO dto = new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
request.setAttribute("dto", dto);
%> --%>
<%@ page import="login.dto.MemberDTO" %>
<%@ include file="../include/header.jsp" %>
<%
MemberDTO dto = new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
%>
<c:set var="dto" value="<%=dto %>" scope="request"/>

<jsp:forward page="ex07_result.jsp"></jsp:forward>
</body>
</html>