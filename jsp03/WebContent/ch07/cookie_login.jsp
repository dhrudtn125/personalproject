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
	//팝업창 열기
	var show = getCookie("showCookies");
	if(show != "N"){
		//window.open("url","팝업창이름","팝업창 크기 (가로,세로)");
		window.open("popup.jsp","","width=300,height=400");
	}
	//저장된 쿠키 조회
	var cookie_userid = getCookie("userid");
	//저장된 쿠키가 있으면 
	if(cookie_userid != ""){
		//userid 값에 쿠키값을 입력
		$("#userid").val(cookie_userid);
		//체크박스를 체크상태로 설정
		$("#chkSave").attr("checked",true);
	}
	$("#btnLogin").click(function(){
		if(#("#chkSave").is(":checked")){//check
		saveCookie($("#userid").val());
		}else{//uncheck
		saveCookie("")''	
		}
	});
	$("#chkSave").click(function(){
		if($("#chkSave").is(":checked")){
			if(!confirm("로그린 정보를 저장 하시겠습니까?")){
				//태그.attr("속성",속성값)
				//$("#chkSave").attr("checked",false);
				$("#chkSave").prop("checked",false);
			}
		}
	});
});
function saveCookie(id){
	if(id != ""){
		setCookie("userid",id,7);//7일
	}else{
		setCookie("userid",id,-1)//삭제
	}
}
function setCookie(name, value, days){
	var today = new Date();
	//쿠키의 유효기간 설정
	today.setDate(today.getDate()+days);
	//document.cookie = 쿠키값="="+value+";저장경로=/jsp03:expires="+만료일자+";";
	document.cookie = name="="+value+";path=/jsp03:expires="+today.toGMTString()+";";
}
function getCookie(cname){
	var cookie = document.cookie+";";
	console.log(cookie);
	var idx = cookie.indexOf(cname,0);
	var val="";
	if(idx != -1){
		console.log(idx+","+cookie.length);
		cookie = cookie.substring(idx,cookie.length);
		begin = cookie.indexOf("=",0)+1;
		end = cookie.indexOf(";",begin);
		console.log(begin+","+end);
		val = cookie.substring(begin,end);
	}
	return val;
}
</script>
</head>
<body>
<form method="post" name="form1">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input name="userid" id="userid">
				<input type="checkbox" id="chkSave">아이디 저장
				</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input name="password" id="passwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="로그인" id="btnLogin"></td>
		</tr>
	</table>
</form>
</body>
</html>