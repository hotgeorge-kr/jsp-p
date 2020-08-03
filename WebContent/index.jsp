<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
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
<title>핫죠지</title>
<link href="./Resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./Resource/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="./Resource/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">
<link href="./Resource/css/stylish-portfolio.min.css" rel="stylesheet">
</head>

<body id="page-top">

	<!-- 네이게이션 바 -->
	<a class="menu-toggle rounded" href="#"> <i class="fas fa-bars"></i>
	</a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand"><a class="js-scroll-trigger"
				href="#page-top">핫죠지</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#page-top">홈</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#tech">핫죠지 기술</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#portfolio">핫죠지 프로젝트</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#contact">핫죠지에 대해</a></li>
		</ul>
	</nav>

	<!-- 메인 -->
	<header class="masthead d-flex">
		<div class="container text-center my-auto">
			<h1 class="mb-1">핫죠지</h1>
			<h3 class="mb-5">
				<em>핫죠지의 모든 것</em>
			</h3>
			<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">알아보기</a>
		</div>
		<div class="overlay"></div>
	</header>

	<!-- 기술 -->
	<section class="content-section bg-primary text-white text-center"
		id="tech">
		<div class="container">
			<div class="content-section-heading">
				<h3 class="text-secondary mb-0">기술</h3>
				<h2 class="mb-5">핫죠지가 보유한 기술들</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="icon-screen-smartphone"></i>
					</span>
					<h4>
						<strong>RPAS</strong>
					</h4>
					<p class="text-faded mb-0">
						Optical Flow / LIDAR<br /> UltraSonic <br /> Embedded System<br />
						Government task<br /> Proposals & Sales<br /> Investor Relations<br />
						Research & Development<br />
					</p>
				</div>
				<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="icon-pencil"></i>
					</span>
					<h4>
						<strong>RPAS Career</strong>
					</h4>
					<p class="text-faded mb-0">
						RPAS 환경측정 연구원 <br /> RPAS 스타트업 전략기획팀장 <br /> 대한상공회의소 RPAS 교관
					</p>
				</div>
				<div class="col-lg-3 col-md-6 mb-5 mb-md-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="icon-like"></i>
					</span>
					<h4>
						<strong>IT</strong>
					</h4>
					<p class="text-faded mb-0">
						Data Structure <br /> C / Aalgorithm <br /> Ruby on Rails <br />
						Java / JSP / Servlet <br /> Oracle DB / MySQL <br /> Unix /
						Linux / Windows<br /> UI / UX Design
					</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="icon-mustache"></i>
					</span>
					<h4>
						<strong>IT Career</strong>
					</h4>
					<p class="text-faded mb-0">
						LikeLion 4기 TF 운영진 <br /> 42Seoul 2기 <br /> What I want to do. <br />
						BoB 10기 <br /> Software Maestro 12기
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- 프로젝트 -->
	<section class="content-section" id="portfolio">
		<div class="container">
			<div class="content-section-heading text-center">
				<h3 class="text-secondary mb-0">프로젝트</h3>
				<h2 class="mb-5">핫죠지 프로젝트들</h2>
			</div>
			<div class="row no-gutters">
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://github.com/Hotgeorge/JAVA_game">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">자바로 만든 게임.</div>
								<p class="mb-0">총알 피하기 (미완성).</p>
							</div>
						</div> <img class="img-fluid" src="./Resource/img/portfolio-1.jpg"
						alt="">
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://github.com/Hotgeorge/KioskProject">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">자바로 만든 키오스크.</div>
								<p class="mb-0">주문관리 시스템 (미완성).</p>
							</div>
						</div> <img class="img-fluid" src="./Resource/img/portfolio-2.jpg"
						alt="">
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://github.com/hotgeorge-kr/jsp-p">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">자바로 만든 웹페이지.</div>
								<p class="mb-0">JSP와 Servlet을 사용한 웹페이지.</p>
							</div>
						</div> <img class="img-fluid" src="./Resource/img/portfolio-3.jpg"
						alt="">
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item" href="#!">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">자바로 만든 웹프로젝트.</div>
								<p class="mb-0">Spring 프레임워크를 사용한 웹프로젝트 (미완성).</p>
							</div>
						</div> <img class="img-fluid" src="./Resource/img/portfolio-4.jpg"
						alt="">
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- 빙명록 -->
	<section class="content-section bg-primary text-white">
		<div class="container text-center">
			<h2 class="mb-4">핫죠지가 궁금해?</h2>
			<a href="http://bj.afreecatv.com/rapa100g/posts/29584210" class="btn btn-xl btn-light mr-4">궁금해!</a>
			<a href="guestbook.jsp" class="btn btn-xl btn-dark">핫죠지에게 응원 한마디!</a>
		</div>
	</section>

	<!-- 지도 -->
	<div id="contact" class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1582.9175873779652!2d127.06413640574576!3d37.48821576368736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca69e2f9eaf1f%3A0xfe9ff1f2202a3ee6!2z6rCc7Y-s65SU7KeA7YS47ZiB7Iug7YyM7YGs!5e0!3m2!1sko!2skr!4v1596416845514!5m2!1sko!2skr"
			width="600" height="450" style="border: 0;" aria-hidden="false"
			tabindex="0"></iframe>
		<br /> <small> <a
			href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1582.9175873779652!2d127.06413640574576!3d37.48821576368736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca69e2f9eaf1f%3A0xfe9ff1f2202a3ee6!2z6rCc7Y-s65SU7KeA7YS47ZiB7Iug7YyM7YGs!5e0!3m2!1sko!2skr!4v1596416845514!5m2!1sko!2skr"></a>
		</small>
	</div>

	<!-- Footer -->
	<footer class="footer text-center">
		<div class="container">
			<ul class="list-inline mb-5">
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3"
					href="https://blog.naver.com/rapa100g"> <i
						class="icon-social-tumblr"></i>
				</a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3"
					href="https://www.instagram.com/daily_tulbo/"> <i
						class="icon-social-instagram"></i>
				</a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white"
					href="https://github.com/Hotgeorge"> <i
						class="icon-social-github"></i>
				</a></li>
			</ul>
			<p class="text-muted small mb-0">Copyright &copy; Hot George
				Website 2020</p>
		</div>
	</footer>

	<!-- 맨위로 -->
	<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>
</body>
<script src="./Resource/vendor/jquery/jquery.min.js"></script>
<script src="./Resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="./Resource/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="./Resource/js/stylish-portfolio.min.js"></script>
</html>
