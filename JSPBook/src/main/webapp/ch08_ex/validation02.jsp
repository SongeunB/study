<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	비밀번호확인 : <input type="text" name="passwd2">
		<p>	<input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		var pwd = form.passwd.value;
		for(var i=0; i<pwd.length-2; i++){
			if(pwd.substr(i,2) == pwd.substr(i+1,2)){
				alert("동일한 문자,숫자는 3개이상 입력할 수 없습니다.");
				form.passwd.focus();
				return false;
			}
		}
		if(form.passwd.value != form.passwd2.value){
			alert("비밀번호가 일치하지 않습니다.");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
</html>