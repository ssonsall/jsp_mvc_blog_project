<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="/blog/img/logo502.jpg" type="image/jpg">
<title>502 Blog</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/blog/css/bootstrap.css">
<link rel="stylesheet" href="/blog/vendors/linericon/style.css">
<link rel="stylesheet" href="/blog/css/font-awesome.min.css">
<link rel="stylesheet" href="/blog/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="/blog/vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet" href="/blog/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="/blog/vendors/animate-css/animate.css">
<link rel="stylesheet" href="/blog/vendors/jquery-ui/jquery-ui.css">
<!-- main css -->
<link rel="stylesheet" href="/blog/css/style.css">
<link rel="stylesheet" href="/blog/css/responsive.css">
</head>
<body>
	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container box_1620">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="#"><img src="/blog/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav">

							<li class="nav-item active"><a class="nav-link" href="/blog/index.jsp">Home</a></li>

							<li class="nav-item"><a class="nav-link" href="/blog/board/write.jsp">Posting</a></li>



							<c:choose>
								<c:when test="${empty sessionScope.user}">
									<li class="nav-item"><a class="nav-link" href="/blog/user/join.jsp">Join</a></li>
									<li class="nav-item"><a class="nav-link" href="/blog/user/login.jsp">Login</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link" href="/blog/user/update.jsp">Profile</a></li>
									<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=logout">Logout</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						
						<a href="/blog/index.jsp" style="margin : 0px auto;"><img src="/blog/img/logo502.jpg" style="width: 100px; height:50px;"></a>
						
						<ul class="nav navbar-nav navbar-right header_social ml-auto">
							<c:choose>
								<c:when test="${empty sessionScope.user}">
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a href="/blog/user/update.jsp"><img src="http://localhost:8000/blog/userprofile/${sessionScope.user.userProfile}" width="55px" height="55px" /></a></li>
									<li class="nav-item" style="margin-top: 5px"><a href="/blog/user/update.jsp">Hello! ${sessionScope.user.username}!</a></li>
									<c:if test="${sessionScope.user.emailCheck ne 1}">
										<li class="nav-item" style="margin-top: 3px;"><a class="blog_btn" href="http://localhost:8000/blog/user?cmd=fromNavToEmailAuth" style="color:red;">email 인증하기</a></li>
									</c:if>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</nav>
		</div>

	</header>
	<!--================Header Menu Area =================-->