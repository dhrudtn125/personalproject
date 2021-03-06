<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>About Me</title>
<meta name="viewport" content="width=device-width, user-scalable=no">
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<link rel="stylesheet" href="style.css">
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
	<div class="portrait"></div>
	<div class="profile">
		<div class="profile-header">
			<div class="name">
			I'm a
			<div class="name-job">
               <ul class="name-job-list">
                   <li>Designer</li>
                   <li>Developer</li>
                   <li>Tutor</li>
                   <li>Creator</li>
                   <li>Designer</li>
               </ul>
            </div>
			<h1 class="name-title">오경수</h1>
			</div>
			<p>제인도제인도제인도제인도제인도제인도제인도제인도제
			인도제인도제인도제인도제인도제인도제인도제인도제인도제인도
			제인도제인도제인도제인도제인도제인도제인도제인도제인도제
			인도제인도제인도제인도제인도</p>
			<div class="icons">
				<a class="twitter" href="#">Twitter</a>
				<a class="facebook" href="#">FaceBook</a>
				<a class="instargram" href="#">Instargram</a>
			</div>
		</div>
		<div class="profile-section">
			<h2>work Experience</h2>
			<ul class="time-line">
				<li>
					<h3>2012</h3>
					<p>내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용
					내용내용내용내용내용
					내용이다아아아아아
					</p>
				</li>
				<li>
					<h3>2013</h3>
					<p>내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용
					내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					</p>
				</li>
				<li>
					<h3>2014</h3>
					<p>내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용
					내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					</p>
				</li>
				<li>
					<h3>2015</h3>
					<p>내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					내용내용내용내용내용내용내용내용
					내용내용내용내용내용
					내용내용내용내용내용내용내용내용내용내용
					</p>
				</li>
			</ul>
		</div>
		<div class="profile-section">
			<h2>Skill</h2>
			<ul class="graph">
				<li data-score="100%"><h3>Photoshop</h3></li>
				<li data-score="90%"><h3>Illusteator</h3></li>
				<li data-score="70%"><h3>HTML+CSS</h3></li>
				<li data-score="60%"><h3>Graphic Design</h3></li>
				<li data-score="50%"><h3>Typography</h3></li>
			</ul>
		</div>
		<div class="profile-section">
			<h2>Contact</h2>
			<table class="comment">
				  <tr>
				    <td><input id="writer" placeholder="이름"></td>
				  </tr>
				  <tr>
				    <td><textarea rows="5" cols="40"placeholder="내용을 입력하세요"
				    id="content" class="comment-place"></textarea></td>
				  </tr>
				  <tr>
				  	<td rowspan="2">
				      <button class="comment-btn" id="btnSave" type="button">확인</button>
				    </td>
				  </tr>
				</table>	
					<div class="profile-comment" id="commentList"></div>
		</div>
	</div>	
	
        
</body>
</html>








