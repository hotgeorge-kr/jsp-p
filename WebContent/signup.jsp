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
<title>핫죠지 팬 가입</title>
<link href="./Resource2/css/all.css" rel="stylesheet">
<link href="./Resource2/css/signup.css" rel="stylesheet">
</head>
<body>
<div class="signup-form">
    <form action="signin.jsp" method="post">
		<h2>팬 가입</h2>
		<p>여기서 팬 가입해!</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<span class="fa fa-user"></span>
					</span>                    
				</div>
				<input type="text" class="form-control" name="username" placeholder="팬 이름" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-paper-plane"></i>
					</span>                    
				</div>
				<input type="email" class="form-control" name="email" placeholder="이메일 주소" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-lock"></i>
					</span>                    
				</div>
				<input type="text" class="form-control" name="password" placeholder="비밀번호" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-lock"></i>
						<i class="fa fa-check"></i>
					</span>                    
				</div>
				<input type="text" class="form-control" name="confirm_password" placeholder="비밀번호 확인" required="required">
			</div>
        </div>
        <div class="form-group">
			<label class="form-check-label"><input type="checkbox" required="required"><a> 개인정보 제공에 동의해.</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">팬 가입</button>
        </div>
    </form>
	<div class="text-center">준비됐어? <a href="signin.jsp">로그인하러 가자</a></div>
</div>
</body>
</html>