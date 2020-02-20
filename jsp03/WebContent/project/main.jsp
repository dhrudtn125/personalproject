<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../project/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="../include/jquery-3.4.1.min.js"></script>
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
				<li><a href="main.jsp">home</a></li>
				<li><a href="../board/index.jsp">커뮤니티</a></li>
				<li><a href="who1.jsp">겔러리</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="wrapper">
	<div class="wrapper">
		 <ul class="sq clearfix">
		 	<li class="sq-item sq-item-large">
		 		<a href="../project/view1.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/hero.jpg">
		 			<span class="sq-item-anchor-title">히어로</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view2.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/plaladin.png">
		 			<span class="sq-item-anchor-title">팔라딘</span>
		 		</a>
		 	</li>
		 	<li class="sq-item ">
		 		<a href="../project/view3.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/darknite.png">
		 			<span class="sq-item-anchor-title">다크나이트</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view4.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/bowmarster.png">
		 			<span class="sq-item-anchor-title">보우마스터</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="#../project/view5.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/godgoong.jpg">
		 			<span class="sq-item-anchor-title">신궁</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view6.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/mage.png">
		 			<span class="sq-item-anchor-title">마법사</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view7.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/nightlord.png">
		 			<span class="sq-item-anchor-title">나이트로드</span>
		 		</a>
		 	</li>
		 	<li class="sq-item sq-item-large sq-item-float-right">
		 		<a href="../project/view8.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/dando.png">
		 			<span class="sq-item-anchor-title">섀도어</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view9.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/dual.png">
		 			<span class="sq-item-anchor-title">두얼블레이더</span>
		 		</a>
		 	</li>
		 	<li class="sq-item">
		 		<a href="../project/view10.jsp" class="sq-item-anchor">
		 			<img class="sq-item-anchor-cover" src="../project/images/captian.jpg">
		 			<span class="sq-item-anchor-title">캡틴</span>
		 		</a>
		 	</li>
		 	
		 </ul>
	</div>
</div>
<div class="ad">
	<p>광고das</p>
</div>
<div class="footer">끝머리</div>

</body>
</html>