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
	comment_list();
	$("#btnSave").click(function(){
		comment_add();
	});
	$("#btnList").click(function(){
		location.href="${path}/board_servlet/list.do";
	});
	$("#btnReply").click(function(){
		document.form1.action="${path}/board_servlet/reply.do";
		document.form1.submit();
	});
	$("#btnEdit").click(function(){
		document.form1.action="${path}/board_servlet/pass_check.do";
		document.form1.submit();
	});
});

function comment_add(){
	var param="board_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/comment_add.do",
		data: param,
		success: function(){
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}


function comment_list(){
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result){
			$("#commentList").html(result);
		}
	});
}

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
<form name="form1" method="post">
<table border="1">
  <tr>
    <td>날짜</td>
    <td>${dto.reg_date}</td>
    <td>조회수</td>
    <td>${dto.readcount}</td>
  </tr>
  <tr>
    <td>이름</td>
    <td colspan="3">${dto.writer}</td>
  </tr>
  <tr>
    <td>제목</td>
    <td colspan="3">${dto.subject}</td>
  </tr>
  <tr>
    <td class="main-script">본문</td>
    <td class="main-script" colspan="3">${dto.content}</td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td colspan="3">
      <input type="password" name="passwd" id="passwd">
        <c:if test="${param.message == 'error'}">
          <span style="color: red">
           비밀번호가 일치하지 않습니다.
          </span>
        </c:if>
    </td>
  </tr>
  <tr>
    <td>첨부파일</td>
    <td colspan="3">
      <c:if test="${dto.filesize > 0}">
        ${dto.filename}( ${dto.filesize} bytes )
        <a href="${path}/board_servlet/download.do?num=${dto.num}">
        [다운로드]</a>
      </c:if>
    </td>
  </tr>
  <tr>
    <td colspan="4" align="center">
      <input type="hidden" name="num" value="${dto.num}">
      <input type="button" value="수정/삭제" id="btnEdit">
      <input type="button" value="답변" id="btnReply">
      <input type="button" value="목록" id="btnList">
    </td>  
  </tr>
</table>
</form>
<!-- 댓글 쓰기 폼 -->
<table class="comment-table" width="700px">
  <tr>
    <td><input id="writer" placeholder="이름"></td>
    <td rowspan="2">
      <button id="btnSave" type="button">확인</button>
    </td>
  </tr>
  <tr>
    <td><textarea rows="5" cols="80" placeholder="내용을 입력하세요"
    id="content"></textarea></td>
  </tr>
</table>
<!-- 댓글 목록을 출력할 영역 -->
<div id="commentList"></div>
</div>
<div class="ad">
	<p>광고das</p>
</div>
<footer><p>상호 :  미정 대표자(성명) : 오경수 / 사업자등록번호 :  nnn-nn-nnnnn 통신판매번호 : 제 1995-07-20</p>
										<p>주소 : 서울시 서대문구 북아현동 1-93 Tel : 010-2462-3441 E-mail : dhrudtn125@gmail.com 개인정보보호책임자 : 오경수</p>
										<p>금일 방문자 수 : 51명 전체 방문자 수 : 14444명</p></footer>
</body>
</html>