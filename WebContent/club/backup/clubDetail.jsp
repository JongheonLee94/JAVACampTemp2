<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>theJeju</title>
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<link rel="stylesheet" href="../css/common/theJeju.css">
	<link rel="stylesheet" href="../css/club/clubDetail.css">
</head>
<body>
	<!-- header 부분-->
	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header" >
					<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../index.html" style="color: #ffffff;">TheJeju</a>
			</div>
			<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="./clubBoard.html">더모임<span class="sr-only"></span></a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../login/login.html">로그인</a></li>
						<li><a href="../join/register.html">회원가입</a></li>
					</ul></li>
				</ul>
			</div>
		</div>
	</nav>
</header>

<br>
<!-- 2. Title -->
<div class="container" style="width:70%; margin-bottom: 50px;">

	<div class="row marketing">
		<div class="col-lg-6">
			<div class="blog-header">
				<h2 class="blog-title">The Bootstrap Blog</h2>
				<p class="lead blog-description">

					<div class="row">
						<div class="col-lg-12">
							애월에서의 서핑이 생각나는 순간.
						</div>
					</div>

					<div class="row" style="margin-bottom: 40px;">
						<div class="col-lg-12" style="padding-right: 70px;">
							애월이 모든 순간 서핑을 하다가
							맥주를 마시는 거지..
							다 같이 서핑을 하는거지.
							근데 진짜 마라탕도 맛있고,
							너무너무 재밌어.
							ㅎㅎㅎㅎㅎ
							이게 진짜 맛있지.
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							까망이
						</div>
						<div class="col-lg-6">
							인증
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							15,000원
						</div>
						<div class="col-lg-6">
							7 / 20 명
						</div>
					</div>

					<div class="row" style="margin-bottom: 40px;">
						<div class="col-lg-6">
							From 07.21
						</div>
						<div class="col-lg-6">
							To 08.01
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<button style="width:300px;">신청하기</button>
						</div>
					</div>
				</p>
			</div>
		</div>

		<div class="col-lg-6">
			<div class="jumbotron">
				<h1>Jumbotron heading</h1>
				<p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
			</div>
		</div>
	</div>

</div>

<!-- 3. Main -->
<div class="container" style="width:70%">

	<div class="row" style="margin-bottom: 30px;">
		<div class="col-lg-3">
			Icon
		</div>
		<div class="col-lg-3">
			1 Day
		</div>
		<div class="col-lg-3">
			1일차에는 서핑을 즐기는 거고
		</div>
		<div class="col-lg-3">
			etc..
		</div>
	</div>

	<div class="row" style="margin-bottom: 40px;">
		<div class="col-lg-3">
			Icon
		</div>
		<div class="col-lg-3">
			2 Day
		</div>
		<div class="col-lg-3">
			2일차에는 캠핑을 즐기는 거고
		</div>
		<div class="col-lg-3">
			etc..
		</div>
	</div>


</div>

<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="./js/index/mapStoreList.js"></script>
<script>
</script>
</body>
</html>