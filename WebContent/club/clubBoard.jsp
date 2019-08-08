<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>theJeju</title>
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<link rel="stylesheet" href="../css/common/theJeju.css">
	<link rel="stylesheet" href="../css/club/clubBoard.css">
	<style>
		#footer {
			width: 100%;
			margin-top: 30px;
		}

		#footer>img {
			width: 100%;
			height: 100%;
		}

		footer {
			background-color: rgb(255,252,239);
			margin-top: 100px;
		}

		.loll{
			background-color: rgb(255,252,239);

		}

		h5{
			color: black;
			margin-bottom:0px;
			margin-top:0px;
		}

		.row {
			margin-right: 0px;
			margin-left: 0px;
		}

		div.row {
			margin-top: 2px;
			margin-bottom: 2px;
		}

		.staricon{
			width:20px;
			height:20px;

		}


		@media screen and (min-width:960px) {
			#moim1{
				display: block;
			}
			#moim2{
				display: none;
			}

		}

		@media screen and (min-width: 768px) and (max-width: 959px) {
			#moim1{
				display: block;
			}
		}

		@media screen and (max-width:767px) {
			#moim2{
				display: block;
			}

			#moim1{
				display: none;
			}

		}

		.content{
			z-index: 1;
			position: relative;
		}

		.box .row{
			height: 80px;
			padding-top: 10px;
		}

		#MoimButton{
			padding-left: 40px;
			padding-right: 40px;
		}
		.darkness {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			background-color: black;
			z-index: 1000;
			background:#000000;
			/* 추가된 부분 */
			opacity:0;
			transition:all .6s linear;
		}

		.btn-plus {
			position:absolute;
			top:37%;
			left:42%;
			background:#F0AD4E;
			width:55px;
			height:55px;
			border-radius:50%;
			text-align:center;
			z-index: 1001;
			/* 추가된 부분 */
			opacity:0;
			transform:scale(2);
			transition:all .3s linear;
			cursor: pointer;
		}

		/* 추가된 부분 */
		.content:hover .darkness{
			opacity:0.2;
		}

		/* 추가된 부분 */
		.content:hover .btn-plus {
			opacity:1;
			transform:scale(1);
		}


	</style>
</head>


<body class="loll">
<!-- header 부분-->
<jsp:include page="../header.jsp"></jsp:include>


<!-- 1. Banner -->
<section id="banner" data-video="images/banner">
	<div class="inner">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<a href="#main" class="more"></a>
	</div>
</section>
<br><br><br><br>
<!-- 2. Title -->
<div class="container" style="width:45%">
	<hr>
</div>
<div class="container" style=" flex-direction: row; width:65%">
	<br><h3 style="text-align: center; color:black;">나에게 맞는 모임을 찾고<br>
	sd나만의 모임을 만들고 참여해보세요ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</h3><br>
</div>
<div class="container" style="width:45%">
	<hr><br><br>
</div><br>


<div id="MoimButton" class="container" style="width:70%">
	<span style="margin-right : 20px;"><a href="#">조회순</a></span>
	<span style="margin-right : 20px;"><a href="#">평점순</a></span>
	<span><a href="#">최신순</a></span>
	<span id="moim1" style="float:right;">
		<a class="btn btn-warning" href="clubWrite.html" role="button">모임 개설하기</a></span>
</div>

<!-- 3. Main -->
<div id="main">



	<div class="inner">

		<div class="thumbnails">


			<div class="box" style="position: relative;">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="clubDetail.html" id="lol" class="image fit"><img src="../images/windsurfing.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >서핑</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>

				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/mara.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >마사모</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/bicycle.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >자전거</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/soccer.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >조기축구회</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/boardgame.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >보드게임</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/mountaineer.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >산악회</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/tabletennis.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >핑퐁의황제</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/photographer.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >자아를 찾아</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="box">
				<div class="content">
					<div class="darkness"></div>
					<div class="btn-plus" style="padding-top: 15px;"><span draggable="false" style="color: #fff; font-weight: bold;">신청</span></div>
					<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/billiards.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >머리대라</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<!-- 페이지네이션부분-->
<div style="text-align: center">
	<nav>
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
</div>
<div id="MoimButton" class="container" style="width:70%">
	<span id="moim2" style="float:right;">
		<a class="btn btn-default btn-lg" href="clubWrite.html" role="button">모임 개설하기</a></span>
</div>

<footer class="page-footer font-small indigo" style="margin-top: 80px;">
	<div id="footer" class="container" style="width: 70%">
		<img src="../images/pic_team.png">
	</div>

</footer>

<div class="container-fluid">
	<img src="../images/footer2.png" style="width: 100%">
</div>



<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="../js/bootstrap.js"></script>

<script>

	$('.content').hover(function(){
		$('#btn_regist').css("display","none");
	});

	$('.content').mouseover(function() {
		$('#btn_regist').css("display","block");
	});

	$('.btn-plus').on('click', function(){
		location.href = 'clubDetail.html';
	})
</script>
</body>
</html>