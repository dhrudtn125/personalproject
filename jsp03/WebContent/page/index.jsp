<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//페이지 로딩 완료 후 자동으로 실행되는 코드
$(document).ready(function(){
	list('1');//1페이지라는 뜻,
});
function list(curPage){
	var param = "curPage=" +curPage
	$.ajax({
		type: "post",
		url: "${path}/page_servlet/list.do",
		success: function(result){
			$("#result").html(result);
		}
	});
}

</script>
</head>
<body>
<h2>페이지 나누기</h2>
<div id="result"></div>
</body>
</html>