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
		<p>	<input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		var regPwd = /^(?=.*[a-zA-Z]{1,})(?=.*[!@#$%^*+=-]{1,})(?=.*[0-9]{1,}).{8,}$/;
		if(!regPwd.test(form.passwd.value)){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			form.passwd.focus();
			return false;
		} else if(form.passwd.value.length < 7){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
</html>