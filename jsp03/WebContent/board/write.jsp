<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../board/css/layout.css">
<link rel="stylesheet" href="../board/css/table.css">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});

</script>
</head>
<body>
<div class="header">
	<div class="bg-main">
		<p class="bg-main-text">게시판</p>
	</div>
	<div class="micon" >
		<input type="checkbox" id="menuicon">
		<label for="menuicon">
			<span></span>
			<span></span>
			<span></span>
		</label>
		<div class="menuslide" id="menuslide">
			<ul>
				<li><a href="#">home</a></li>
				<li><a href="#">커뮤니티</a></li>
				<li><a href="#">겔러리</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="wrapper">
<form name="form1" method="post" enctype="multipart/form-data"
action="${path}/board_servlet/insert.do">
<table border="1" width="700px">
  <tr>
    <td>이름</td>
    <td><input name="writer" id="writer"></td>
  </tr>
  <tr>
    <td>제목</td>
    <td><input name="subject" id="subject" size="60"></td>
  </tr>
  <tr>
    <td>본문</td>
    <td><textarea rows="5" cols="60" 
    name="content" id="content"></textarea></td>
  </tr>
  <tr>
    <td>첨부파일</td>
    <td><input type="file" name="file1"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd" id="passwd"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="button" value="확인" id="btnSave">
    </td>
  </tr>
</table>
</form>
</div>
<div class="ad">
	<p>광고das</p>
</div>
<footer><p>상호 :  미정 대표자(성명) : 오경수 / 사업자등록번호 :  nnn-nn-nnnnn 통신판매번호 : 제 1995-07-20</p>
										<p>주소 : 서울시 서대문구 북아현동 1-93 Tel : 010-2462-3441 E-mail : dhrudtn125@gmail.com 개인정보보호책임자 : 오경수</p>
										<p>금일 방문자 수 : 51명 전체 방문자 수 : 14444명</p></footer>
</body>
</html>