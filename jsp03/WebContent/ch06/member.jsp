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
	list();
	$("#btnSave").click(function(){
		insert();
	});
});

function insert(){
	var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&hp="+$("#hp").val();
	
	$.ajax({
		type:"post",
		url:"/jsp03/member_servlet/join.do",
		data:param,
		success:function(){
			list();
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#hp").val("");
		}
	});
}
function list(){
	$.ajax({
		type:"post",
		url: "/jsp03/member_servlet/list.do",
		success:function(result){
			console.log(result);//F12 개발자 모드
			$("#memberList").html(result);
		}
	});
}
</script>
</head>
<body>
<h2>회원관리</h2>
아이디 : <input id="userid">
비번 : <input type="password" id="passwd"><br>
이름 : <input id="name">
이메일 : <input id="email"><br>
핸드폰 : <input id="hp">
<button type="button" id="btnSave">추가</button>
<div id="memberList"></div>

</body>
</html>