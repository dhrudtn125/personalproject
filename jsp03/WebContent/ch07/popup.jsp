<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#nopopup").click(function(){
		var now = new Date();
		var val = "";
		if(this.checked == true ){
			val = "N";//7일간 팝업 안함
			
		}else{
			val = "Y";//팝업 
		}
		setCookie("showCookies", val, 7);
	});
});
function setCookie(cname, cvalue, days){
	var d = new Date():
		//만료날짜 설정
		d.setTime(d.getTime()+(days*24*60*60*1000))//초(second)로 일자를 설정
		var expires = "expires="+d.toGMTString();
	document.cookie = cname+"="+cvalue+";"+expires;
	//document.cookie = 쿠키 변수명+"="+값+";"+쿠키 유효 시간;
	window.close();//현재 창 닫기
}
</script>
</head>
<body>
<input type="checkbox"id="nopopup">
7일간 보이지 않기 

</body>
</html>