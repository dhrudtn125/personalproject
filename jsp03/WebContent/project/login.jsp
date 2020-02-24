<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
</head>
<body>
<div class="header">
</div>
<div class="wrapper">
	<form name="form1" action="post">
		<fieldset>
		<table class="login-table">
			<tr>
				<td>아이디:</td>
				<td><input type="text" id="userid"></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="text" id="passwd"></td>
			</tr>
		</table>
		</fieldset>
	</form>
</div>
<div class="footer"></div>
</body>
</html>