<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>301호 에타 로그인</title>
<link href="./Resource2/css/all.css" rel="stylesheet">
<link href="./Resource2/css/signin.css" rel="stylesheet">
</head>
<body>
<div class="login-form">
    <form action="index.jsp" method="post">
		<div class="avatar">
			<img src="./Resource/img/avatar.jpg" alt="Avatar">
		</div>
        <h2 class="text-center">회원 로그인</h2>   
        <div class="form-group">
        	<input type="text" class="form-control" name="username" placeholder="팬 이름" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="비밀 번호" required="required">
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
        </div>
		<div class="bottom-action clearfix">
            <label class="float-left form-check-label"><input type="checkbox">비밀번호 저장</label>
            <a href="#" class="float-right">비밀번호 잊었어?</a>
        </div>
    </form>
    <p class="text-center small">아이디 까먹었어? <a href="signup.jsp">여기서 새로 가입해!</a></p>
</div>
</body>
</html>