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
	$("#btnJoin").click(function(){
		var param = "userid="+$("#userid").val()+"&passwd="+$("#passwd").val()+"&name="+$("#name").val();
		$.ajax({
			type:"post",
			url: "/jsp03/member_servlet/join_oracle_secret.do",
			data: param,
			success: function(result){
				alert("추가되었습니다.");
			}
		});
	});
	
});
</script>
</head>
<body>
아이디 : <input id="userid"><br>
비번 : <input type="password" id="passwd"><br>
이름 : <input id="name"><br>
<button id="btnJoin">회원가입</button>

</body>
</html>