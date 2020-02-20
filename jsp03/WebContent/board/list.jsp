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
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.jsp";
	});
});

//클릭한 페이지로 넘어갈수 있는 함수 
function list(page){
	location.href="${path}/board_servlet/list.do?curPage="+page;
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
				<li><a href="../project/main.jsp">home</a></li>
				<li><a href="../board/index.jsp">커뮤니티</a></li>
				<li><a href="../project/who1.jsp">겔러리</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="wrapper">
		<div class="search">
			<form action="${path}/board_servlet/search.do" name="form1" method="post">
				<select name="search_option">
					<option value="writer">이름으로 찾기 </option>
					<option value="subject">제목으로 찾기 </option>
					<option value="content">내용으로 찾기 </option>
					<option value="all">이름+제목+내용 으로 찾기 </option>
				</select>
				<input class="search-area"  name="keyword">
				<button id="btnSearch">검색</button>
				<!-- button 태그는 기본값이 type="submit"이다.
				type="button"하면 js를 사용하여야 한다  --> 
			</form>
			<button id="btnWrite">글쓰기</button>
		</div>
		
	<div class="contents-area">
	<table class="contents-table" width="900px">
	  <tr>
	    <th>번호</th>
	    <th>이름</th>
	    <th>제목</th>
	    <th>날짜</th>
	    <th>조회수</th>
	    <th>첨부파일</th>
	    <th>다운로드</th>
	  </tr>
	 <c:forEach var="dto" items="${list}">
	 	<c:choose>
	 		<c:when test="${dto.show == 'y'}">
	  <tr>
	    <td>${dto.num}</td>
	    <td>${dto.writer}</td>
	    <td>
	       <!-- 답글 들여쓰기 -->
	       <c:forEach var="i" begin="1" end="${dto.re_level}">
	         &nbsp;&nbsp;
	       </c:forEach>
	    <a href="${path}/board_servlet/view.do?num=${dto.num}" class="subject">
	    ${dto.subject}</a>
	    <!-- 댓글갯수 표시 -->
	    <c:if test="${dto.comment_count > 0}">
	    	<span style="color: red;">(${dto.comment_count})</span>
	    </c:if>
	    </td>
	    <td>${dto.reg_date}</td>
	    <td>${dto.readcount}</td>
	    <td align="center">
	      <c:if test="${dto.filesize > 0}">
	       <a href="${path}/board_servlet/download.do?num=${dto.num}">
	        <img src="../images/file.gif">
	       </a> 
	<!-- 			 <script>
	       setTimeout('location.reload()',1000);//다운로드 횟수를 1초마다 새로고침
	       </script> -->
	      </c:if>
	    </td>
	   <%--  <td>${dto.filename}</td> --%>
	    
	    <td id="reload">${dto.down}</td>
	  </tr>
	  </c:when>
	  <c:otherwise>
	  	<tr>
	  		<td>${dto.num }</td>
	  		<td colspan="6" align="center">삭제된 계시글 입니다.</td>
	  	</tr>
	  </c:otherwise>
	  </c:choose>
	 </c:forEach> 
	 <!-- 페이지 네비게이션 출력 -->
	 <tr>
	   <td colspan="7" align="center">
	     <c:if test="${page.curBlock > 1 }">
	       <a href="#" onclick="list('1')">[처음]</a>
	     </c:if>
	     <c:if test="${page.curBlock > 1 }">
	       <a href="#" onclick="list('${page.prevPage}')">[이전]</a>
	     </c:if>
	     <c:forEach var="num" begin="${page.blockStart}" 
	     end="${page.blockEnd}">
	       <c:choose>
	         <c:when test="${num == page.curPage}">
	           <span style="color: red">${num}</span>
	         </c:when>
	         <c:otherwise>
	           <a href="#" onclick="list('${num}')">${num}</a>
	         </c:otherwise>
	       </c:choose>
	     </c:forEach>
	     <c:if test="${page.curBlock < page.totBlock}">
	       <a href="#" onclick="list('${page.nextPage}')">[다음]</a>
	     </c:if>
	     <c:if test="${page.curBlock < page.totBlock}">
	       <a href="#" onclick="list('${page.totPage}')">[끝]</a>
	     </c:if>
	 </tr>
	</table>
	</div>
</div>
	<div class="ad">
		<p>광고</p>
	</div>
<footer><p>상호 :  미정 대표자(성명) : 오경수 / 사업자등록번호 :  nnn-nn-nnnnn 통신판매번호 : 제 1995-07-20</p>
										<p>주소 : 서울시 서대문구 북아현동 1-93 Tel : 010-2462-3441 E-mail : dhrudtn125@gmail.com 개인정보보호책임자 : 오경수</p>
										<p>금일 방문자 수 : 51명 전체 방문자 수 : 14444명</p></footer>
</body>
</html>