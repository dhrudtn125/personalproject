<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnjoin").click(function(){
		var userid = $("#userid").val();
		var passwd = $("#passwd").val();
		var name = $("#name").val();
		
		var param={"userid":userid,"passwd":passwd,"name":name};
		$.ajax({
			type: "post",
			url: "/jsp03/member_servlet/join.do",
			data: param,
			success: function(){
				alter("처리가 완료되었습니다.");
			}
		});
	});
});
</script>
</head>
<body>
<h2>회원가입과 로그인</h2>
아이디 : <input id="userid"><br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"><br>
<button id="btnJoin">회원가입</button>
</body>
</html>