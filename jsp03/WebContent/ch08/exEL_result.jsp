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
========================<br>
아이디:${sessionScope.userid}<br>
이름:${sessionScope.name }<br>
나이:${sessionScope.age }<br>
직업:${sessionScope.job }<br>
주소:${sessionScope.addr }<br>
========================<br>
</body>
</html>