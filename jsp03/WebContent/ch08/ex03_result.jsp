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
int num =Integer.parseInt(request.getParameter("num"));
int sum = 0;
for(int i=0;i<=num;i++){
	sum += i;
}
%>
합계 : <%=sum %> --%>

<c:set var="sum" value="0"></c:set>
<!-- forEach  var 카운터 변수 begin=시작 end=끝  -->
<c:forEach var="i" begin="1" end="${param.num }">
	<c:set var="sum" value ="${sum + i }"/>
</c:forEach>
합계 : ${sum }
</body>
</html>