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
<h2>java 코드</h2>
<%-- <%@ page import="java.util.Enumeration" %>
<%
Enumeration<String> headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements()){
	String key = (String)headerNames.nextElement();
	String value = request.getHeader(key);
	out.println(key+":"+value+"<br>");
}
%> --%>

<h2>JSTL 코드</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- request.getHeaderNames()와 같음 -->
<c:forEach var="h" items="${header }">
	${h.key} ==> ${h.value}<br>
</c:forEach>
<%-- <c:set var="browser" value="${header['user-agent'] }" scope="page"/>
<c:out value="${browser }" /><br>
${browser}<br><!-- 위 코드롸 같다 --> --%>

</body>
</html>