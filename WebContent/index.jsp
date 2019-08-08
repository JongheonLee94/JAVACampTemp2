<%--
  Created by IntelliJ IDEA.
  User: ismir
  Date: 2019-08-08
  Time: 오전 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>theJeju</title>
  <link rel="stylesheet" href="./css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="./css/common/header.css">
  <link rel="stylesheet" href="./css/club/clubBoard.css">

  <style>
    @import url(fonts.googleapis.com/earlyaccess/jejugothic.css);
    *{
      font-family: jejugothic;
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
      background-color: rgb(255,252,239);;
      margin-top: 100px;
    }

    body{
      background-color: rgb(255,252,239);
    }

    .navbar-default{
      background-color: rgb(255,252,239);
      border: 0px;
      height: 50px;
    }

    #statusBox{
      width: 300px;
      height: 450px;
    }

    #statusBox #nickname{
      width:110px;
      height: 110px;
      background-color: orange;
      margin-top: 20px;
      margin-left: 20px;
      color: #fff;
      font-style: bold;
      border-radius: 500px;
    }

    #statusDetail{
      margin-top:25px;
    }

    #statusDetail li{
      list-style-type: none;
      padding-top:10px;
    }

    .jumbotron > img {
      width: 100%;
      height: 100%;
    }

    .jumbotron > video {
      width: 100%;
      height: 100%;
    }

    #intro h2{
      font-weight: bold;
    }

    footer a{
      color: #fff;
    }
    footer a:hover{
      color: #fff;
      text-decoration: none;
    }

    @media screen and (min-width:960px) {
      #intro h2{
        margin-bottom: 30px;
        font-size: 23px;
      }
    }

    @media screen and (min-width: 768px) and (max-width: 959px) {
      #intro h2{
        margin-bottom: 20px;
        font-size: 18px;
      }
    }

    @media screen and (max-width:767px) {
      #intro h2{
        margin-bottom: 10px;
        font-size: 13px;
      }

      #footer{
        display: none;
      }

    }



  </style>
</head>
<body>

<!-- header 부분-->
<jsp:include page="header.jsp"></jsp:include>




<div class="container" style="width:85%; padding: 0px;margin-bottom: 100px;">
  <img src="./images/banner.png" style="width:100%;">
</div>

<div id="intro" class="container" style="width: 60%; margin-top: 50px;">


  <div class="row" style="margin-bottom: 110px;">
    <div class="col-md-12 col-sm-12">
      <h2>이 달의 <span style="color: orange;">Best</span> 모임 ></h2>
      <div class="jumbotron" style="padding: 0px;">
        <video src="./images/video.mp4" autoplay controls>
      </div>
    </div>
  </div>

  <div class="row" style="margin-bottom: 60px;">
    <div class="col-md-12 col-sm-12">
      <div class="jumbotron" style="padding: 0px;">
        <img src="./images/indexMain.png" autoplay controls style="width:100%">
      </div>
    </div>
  </div>





</div>


<footer class="page-footer font-small indigo">
  <div id="footer" class="container" style="width: 70%; font-family:'NanumSquare', sans-serif;">
    <img src="images/pic_team.png">
  </div>
  <center>
    <div class="container-fluid footer_option" style="background-color:#404040;">
      <!-- Example row of columns -->
      <br>
      <div class="row" style="color:#fff;">
        <div class="col-md-4">
          <h2 style="color:rgb(240,173,78); font-size: 38px;">CONTACT</h2>
          <span>jeju@ccei.kr</span><br>
          <span>064-710-1900</span><br>
          <p>제주시 중앙로 217 제주벤처마루 3~4층</p>

        </div>
        <div class="col-md-4">
          <h2 style="color:rgb(240,173,78); font-size: 38px;">MAKERS</h2>
          <p>강성혁 김정인</p>
          <p>유성민 이종헌 한유진</p>
        </div>
        <div class="col-md-4">
          <h2 style="color:rgb(240,173,78); font-size: 38px;">OTHERS</h2>
          <a href="#">HOME</a><br>
          <a href="#">FAQ</a><br>
          <a href="#">Join Us</a>
        </div>
      </div>
      <div class="row" style="color:gray">
        <br><br><center><p>Jeju Social Project : JSP<br>
        &copy; 2019. 유단자 All right reserved.
      </p></center><br>
      </div>
    </div></center>


</footer>



<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="./js/bootstrap.js"></script>
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
</script>
</body>
</html>
<!--
https://fonts.google.com/
https://fonts.google.com/earlyaccess
-->