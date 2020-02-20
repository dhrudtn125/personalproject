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
<form method="post"action="memberPro.jsp">
<fieldset style="border: 2px dotted green; width:300px; margin: auto;">
	<legend align="center">입력 사항</legend>
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input name="passwd"></td>
		</tr>
		<tr>
			<td>이름 : </td>
			<td><input name="name"></td>
		</tr>
		<tr>
			<td>이메일 : </td>
			<td><input name="email"></td>
		</tr>
		<tr>
			<td>전화번호 : </td>
			<td><input name="hp"></td>
		</tr>
		<tr>
			<td>주소 : </td>
			<td><input name="addr"></td>
		</tr>
		<tr>
			<td align="right" colspan="2"><input type="submit"value="확인"></td>
		</tr>
	</table>
</fieldset>
</form>
</body>
</html>