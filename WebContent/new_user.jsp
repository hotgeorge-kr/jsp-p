<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>회원가입</title>
<link href="./css/signup.css" rel="stylesheet">
</head>

<body>

	<div class="signup-form">
		<form method="post" action="user_control.jsp?action=new">
			<H2>회원가입</H2>
			<hr />
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-text"> <i class="fa fa-user"></i></span> 
					<span><input class="form-control" type="text" name="name" size="10" required placeholder="이름"></span>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-text"> <i class="fa fa-user"></i></span>  <span><input
						type="text" class="form-control" name="uid" size="10" required placeholder="아이디"></span>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-text"> <i class="fa fa-paper-plane"></i></span>
					<span><input class="form-control" type="email" name="email"
						size="10" placeholder="이메일"></span>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-text"> <i class="fa fa-lock"></i></span> <span><input
						class="form-control" type="password" name="passwd" size="10"
						required placeholder="비밀번호"> </span>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<button class="btn btn-primary btn-lg" type="submit" value="회원등록">회원
						가입</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
