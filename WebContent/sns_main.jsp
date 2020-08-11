<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>301호 에브리타임</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion({
			heightStyle : "content",
			active : parseInt("${curmsg == null ? 0:curmsg}")
		});
	});

	function newuser() {
		window.open(
						"new_user.jsp",
						"newuser",
						"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=500,height=555");
	}
</script>

</head>

<body>
	<header>
		<div class="container1">
			<h1 class="fontface" id="title">301호 에브리타임</h1>
		</div>
	</header>

	<nav>
		<div class="menu">
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="javascript:newuser()">회원가입</a></li>
				<li><a href="sns_control.jsp?action=getall">전체 글 보기</a>
				<li><sns:login /></li>
			</ul>
		</div>
	</nav>

	<div id="wrapper">
		<section id="main">
			<section id="content">
				<b>내 소식 업데이트</b>
				<form class="m_form" method="post" action="sns_control.jsp?action=newmsg">
					<input type="hidden" name="uid" value="${uid}">
					<sns:write type="msg"/>
					<button class="submit" type="submit">등록</button>
				</form>
				<br>
				<br>
				<h3>수강생들의 최신 소식</h3>
				<div id="accordion">
					<c:forEach varStatus="mcnt" var="msgs" items="${datas}">
					<c:set var="m" value="${msgs.message}"/>
					<h3>[${m.uid}]${m.msg} :: [좋아요 ${m.favcount} | 댓글 ${m.replycount}]</h3>
					<div>
						<p></p>
						<p><sns:smenu mid="${m.mid}" auid="${m.uid}" curmsg="${mcnt.index}"/>/ ${m.date}에 작성된 글입니다.</p>
						
						<ul class="reply">
						<c:forEach  var="r" items="${msgs.rlist}">
							<li>${r.uid } :: ${r.rmsg} - ${r.date} <sns:rmenu curmsg="${mcnt.index}" rid="${r.rid}" ruid="${r.uid}"/></li>
						</c:forEach>
						</ul>
						
						<form action="sns_control.jsp?action=newreply&cnt=${cnt}" method="post">
							<input type="hidden" name="mid" value="${m.mid}">
							<input type="hidden" name="uid" value="${uid}">
							<input type="hidden" name="suid" value="${suid}">
							<input type="hidden" name="curmsg" value="${mcnt.index}">				
							<sns:write type="rmsg"/>
						</form>
					</div>
					</c:forEach>
				</div>
			
				<div align="center"><a href="sns_control.jsp?action=getall&cnt=${cnt+5}&suid=${suid}">더보기&gt;&gt;</a></div>

			</section>
			<aside id="sidebar2">
				<!-- sidebar2 -->
				<h2>가입한 수강생들</h2>
				<c:forEach items="${nusers}" var="n">
					<ul>
						<li><a href="sns_control.jsp?action=getall&sname=${n}">${n}</a></li>
					</ul>
				</c:forEach>

				<h3>Links</h3>
				<ul>
					<li><a href="#">핫죠지 블로그</a></li>
					<li><a href="#">핫죠지 깃허브</a></li>
					<li><a href="#">핫죠지 인스타그램</a></li>
				</ul>

			</aside>
			<!-- end of sidebar -->
		</section>
	</div>
</body>
</html>