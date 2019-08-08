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
	<link rel="stylesheet"
		  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<style>
		@import url(fonts.googleapis.com/earlyaccess/jejugothic.css);

		h1 {
			color: black;
			font-family: 'Jeju Gothic', sans-serif;
		}

		@media screen and (min-width:960px) {
			#shedule {
				width: 90%;
				margin: 0;
				margin-left: 100px;
				margin-top: 100px;
			}
			.jumbotron {
				width: 600px;
				height: 456px;
				margin-left: 40px;
			}
			#mapsection {
				width: 980px;
				height: 400px;
				margin-top: 100px;
			}
			.box {
				background-color: red;
				width: 55px;
				height: 55px;
				position: absolute;
				left: -80px;
				border-radius: 100px;
			}

			#icon{
				float:right;
				font-size:50px;
				color:orange;
				position : absolute;
				top:200px;
				left:270px;
			}

		}

		@media screen and (min-width: 768px) and (max-width: 959px) {
			#mapsection {
				width: 700px;
				height: 300px;
				margin-top: 100px;
			}

			.box {
				background-color: red;
				width: 55px;
				height: 55px;
				position: absolute;
				left: -80px;
				border-radius: 100px;
			}

			.jumbotron {
				width: 650px;
				height: 400px;
				margin-left: 40px;
			}
		}

		@media screen and (max-width:767px) {
			#shedule {
				margin-left: 40px;
				margin-top : 50px;
			}
			.jumbotron {
				width: 450px;
				height: 300px;
				padding: 0px;
			}
			#mapsection {
				width: 450px;
				height: 300px;
				margin-top: 30px;
			}
			.box {
				background-color: red;
				width: 35px;
				height: 35px;
				position: absolute;
				left: -35px;
				border-radius: 100px;
			}

			#btn_preview{
				margin-bottom: 20px;
			}
		}

		.jumbotron {
			padding: 0px;
		}

		.jumbotron>img {
			width: 100%;
			height: 100%;
		}

		#footer {
			width: 100%;
			margin-top: 30px;
		}

		#footer>img {
			width: 100%;
			height: 100%;
		}

		footer {
			background-color: #404040;
			margin-top: 100px;
		}

		#map {
			width: 300px;
			height: 300px;
		}

		.box > img{
			width:100%;
			height:100%;
			border-radius: 100px;
		}

		#flag{
			width: 30px;
			height: 30px;
			position: relative;
			top : 54px;
			left : -10px;
		}

		#flag img{
			width:100%;
			height: 100%;
		}

		.modal td{
			border-top-width: 0ch
			!important;
		}

		#writeTable td{
			width: 50%;
		}

		#btn_add{
			font-size: 50px;
			color: orange;
		}

		.icon-date{
			font-size: 35px;
			color: orange;
		}

		#image_section{
			width:890px;
			height:530px;
			position:absolute;
			top:-10px;
			left:-4px;
			display: none;
		}

		.txt_filename{
			bottom: 0;
			cursor: inherit;
			font-size: 1000px !important;
			height: 300px;
			margin: 0;
			opacity: 0;
			padding: 0;
			position: absolute;
			right: 0;
			top:0;
			width:80px;
			height:80px;
		}

		#triangle_box{
			width:30px;
			height:30px;
			display: inline-block;
			border-top:25px solid transparent;
			border-right:25px solid #eee;
			border-bottom:25px solid transparent;
			border-left:25px solid transparent;

		}
		#icon_box{
			width:430px;
			height:200px;
			display: inline-block;
			border: 3px #eee solid;s
		z-index: 100;
			background-color: #fff;
			position: absolute;
			top:-20px;
			overflow: auto;
		}
		#icon_box img{
			width: 60px;
			height:60px;
		}

		.btn_change{
			width:60px;
			height: 60px;
			z-index: 1000;
		}

		body{
			background-color: rgb(255,252,239);
		}
		footer {
			background-color: rgb(255,252,239);
			margin-top: 100px;
		}
	</style>
</head>
<body>
<!-- header 부분-->
<jsp:include page="../header.jsp"></jsp:include>


<br>

<!-- 2. Main -->
<form method="POST" action="../club_write.do" enctype="multipart/form-data">
<div class="container" style="margin-top: 20px;">
	<div class="container" style="position: relative;">
		<div id="flag">
			<img id="flagImg" src="../images/flag1.png">
		</div>
		<h2 style="margin-left: 30px;">
			<input type="text" name="title" class="form-control" style="width:37%" placeholder="Title">
		</h2>
	</div>

	<div class="row" style="margin-top : 30px;">
		<div class="col-md-5" id="text_box">

			<table id="writeTable"class="table">
				<tbody>
				<tr>
					<td><p>Mento</p></td>
					<td><p>
						<input type="text" name="clubprice" class="form-control" placeholder="Price">
					</p></td>
				</tr>

				<tr>
					<td colspan="2">
						<p>Content</p>
						<textarea name="clubcontent" class="form-control" style="height: 300px;"></textarea>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="col-sm-7">
			<div class="jumbotron" style="padding: 0px; position : relative;">
				<img id="imgSection" src="#" style="display: none;">
				<div id="icon">
					<span class="glyphicon glyphicon-picture"></span> <input
						type="file" id="img_file" name="file"
						class="txt_filename">
				</div>
			</div>
		</div>
	</div>


</div>


<div class="container">
	<span id = "btn_add" class="glyphicon glyphicon-plus"></span>
	<hr>
</div>

<div id="scheduleBox" class="container"  style="margin-top : 40px; position: relative;">

</div>
<div class="container" style="margin-top: 20px;">
	<div class="row">
		<div class="col-md-12">
			<input class="btn btn-warning btn-lg" data-target="#modal"
			   data-toggle="modal" style="width:100%" type="submit" value="등록하기"/>
		</div>
	</div>
</div>
</form>



<footer class="page-footer font-small indigo">
	<div id="footer" class="container" style="width: 70%">
		<img src="../images/pic_team.png">
	</div>
</footer>

<div class="container">
	<img src="../images/footer2.png" style="width: 100%">
</div>




<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="../js/bootstrap.js"></script>
<!-- <script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0853fb58f3f6c7a181c9ca5c58735af&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level : 5
    // 지도의 확대 레벨
    };

    //지도를 생성합니다
    var map = new daum.maps.Map(mapContainer, mapOption);
</script> -->
<script>
	//제목
	var i = 0;
	$('#flag').on('click', function() {

		i++;
		if (i % 2 == 0) {
			$('#flagImg').attr("src", "../images/flag1.png");
		} else {
			$('#flagImg').attr("src", "../images/flag2.png");
		}
	});


	var dateTag = '' +	//div에 넣는게 날까? + 네모 칸 안에 넣는게 날까
			'<div class="parentBox" style="position: relative; margin-bottom : 70px;">' +
			'<button class="close btn_x" aria-label="Close" style="margin-right:30px;margin-top:20px; font-size:30px;"><span aria-hidden="true">&times;</span></button>' +
			'<img class="btn_change" src="../images/icon/basic.png">' +
			'<div class="doubleBox" style="position: absolute; top:0px; left : 20px; display: none;">' +
			'<div style="display: flex;flex-direction: row; position: relative;">' +
			'<div>' +
			'<div id="triangle_box" class="container" ></div>' +
			'</div>' +
			'<div>' +
			'<div id="icon_box" class="container">' +
			'<table class="table">' +
			'<tr>' +
			'<td><img src="../images/icon/beach.png"></td>' +
			'<td><img src="../images/icon/debate.png"></td>' +
			'<td><img src="../images/icon/discussion.png"></td>' +
			'<td><img src="../images/icon/family.png"></td>' +
			'<td><img src="../images/icon/flamingo.png"></td>' +
			'</tr>' +
			'<tr>' +
			'<td><img src="../images/icon/football-fan.png"></td>' +
			'<td><img src="../images/icon/frites.png"></td>' +
			'<td><img src="../images/icon/helmet.png"></td>' +
			'<td><img src="../images/icon/in-love.png"></td>' +
			'<td><img src="../images/icon/medal.png"></td>' +
			'</tr>' +
			'<tr>' +
			'<td><img src="../images/icon/orange.png"></td>' +
			'<td><img src="../images/icon/palm.png"></td>' +
			'<td><img src="../images/icon/sunbed.png"></td>' +
			'<td><img src="../images/icon/sun-umbrella.png"></td>' +
			'<td><img src="../images/icon/swimming-pool.png"></td>' +
			'</tr>' +
			'<tr>' +
			'<td><img src="../images/icon/tourist.png"></td>' +
			'<td><img src="../images/icon/water-gun.png"></td>' +
			'<td><img src="../images/icon/watermelon.png"></td>' +
			'<td><img src="../images/icon/sun-umbrella.png"></td>' +
			'<td><img src="../images/icon/swimming-pool.png"></td>' +
			'</tr>' +
			'</table>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'<table class="table table-hover" style="width: 100%; margin-top: 20px;">' +
			'<tbody>' +
			'<tr>' +
			'<td>스케줄명</td><td colspan="2"><input type="text"  name="schedulename" class="form-control" placeholder="스케줄 명을 입력해주세요."></td>' +
			'</tr>' +
			'<tr>' +
			'<td>내용</td>' +
			'<td rowspan="2" colspan="2">' +
			'<textarea class="form-control" name="content" placeholder="모임 설명에 대한 내용을 입력해주세요."></textarea></td>' +
			'</tr>' +
			'<tr></tr>' +
			'<tr>' +
			'<td>가격</td><td><input type="text" name="price" class="form-control" placeholder="가격을 입력해주세요."></td>' +
			'<td style="width:20%"></td>' +
			'</tr>' +
			'<tr>' +
			'<td>정원</td><td><input type="text" name="entrynum" class="form-control" placeholder="정원을 입력해주세요."></td>' +
			'<td style="width:20%"></td>' +
			'</tr>' +
			'<tr>' +
			'<td>시작일시</td><td><input type="text" name="sDate" class="form-control" placeholder="시작 일시를 입력해주세요."></td>' +
			'<td style="width:20%"><span class="glyphicon glyphicon-calendar icon-date"></span></td>' +
			'</tr>' +
			'<tr>' +
			'<td>종료일시</td><td><input type="text" name="eDate" class="form-control" placeholder="종료 일시를 입력해주세요."></td>' +
			'<td style="width:20%"><span class="glyphicon glyphicon-calendar icon-date"></span></td>' +
			'</tr>' +
			'<tr>' +
			'<td>주소</td><td><input type="text" name="addr1" class="form-control" placeholder="ex)제주특별자치도 제주시 삼도2동 서사로11길"></td>' +
			'<td style="width:20%"><span class="glyphicon glyphicon-calendar icon-date"></span></td>' +
			'</tr>' +
			'<tr>' +
			'<td>상세주소</td><td><input type="text" name="addr2" class="form-control" placeholder="ex)103동 219호"></td>' +
			'<td style="width:20%"><span class="glyphicon glyphicon-calendar icon-date"></span></td>' +
			'</tr>' +
			'</tbody>' +
			'</table>' +
			'</div>';

	$('#btn_add').on('click', function(e){
		$('#scheduleBox').append(dateTag);

		$('.btn_change').on('click', function(e){
			$(this).parent().children('.doubleBox').css('display', 'block');

			$('#icon_box img').on('click', function(e){
				var images = $(this).attr('src');
				$(this).parent().parent().parent().parent().parent().parent().parent().parent().parent().children('img').first().attr('src',images);
				$(this).parent().parent().parent().parent().parent().parent().parent().parent().css('display', 'none');
			});

		});

		$('.btn_x').on('click', function(e){
			$(this).parent().remove();
		});

	});




	window.onload = function(){
		// 사진 미리보기 기능
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#imgSection').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}


		$('#img_file').change(function() {
			$('#imgSection').css("display", "block");
			$('#icon').css("display", "none");
			readURL(this);
		});

	}
</script>
</body>
</html>




<!--
https://fonts.google.com/
https://fonts.google.com/earlyaccess
-->