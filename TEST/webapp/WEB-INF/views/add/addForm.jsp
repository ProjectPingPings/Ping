<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
</head>
<body>
<h1>회원가입 페이지</h1>
<hr/>
<form action="${pageContext.request.contextPath}/insertUser" method = "POST">
    <input type = "text" name = "username" placeholder="이름을 입력하세요."/> <br/>
    <input type = "text" name = "userid" placeholder="아이디를 입력하세요."/> <br/>
    <input type = "password" name = "password" placeholder="비밀번호를 입력하세요."/> <br/>
    <input type = "text" name = "utel" placeholder="휴대폰 번호를 입력하세요."/> <br/>
    <input type = "text" name = "uadd" placeholder="주소를 입력하세요."/> <br/>
	<input type = "email" name = "uemail" placeholder="이메일을 입력하세요."/> <br/>
    <button>회원가입</button>
</form>
[<a href = "/oauth2/authorization/google">구글 로그인</a>]
</body>
</html>