<%--
  Created by IntelliJ IDEA.
  User: ismir
  Date: 2019-08-08
  Time: 오후 12:07
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

        * {
            font-family: jejugothic;
        }

        #footer {
            background-color: rgb(255, 252, 239);
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

        body {
            background-color: rgb(255, 252, 239);
        }

        .navbar-default {
            background-color: rgb(255, 252, 239);
            border: 0px;
            height: 50px;
        }

        #statusBox {
            width: 300px;
            height: 450px;
        }

        #statusBox #nickname {
            width: 110px;
            height: 110px;
            background-color: orange;
            margin-top: 20px;
            margin-left: 20px;
            color: #fff;
            font-style: bold;
            border-radius: 500px;
        }

        #statusDetail {
            margin-top: 25px;
        }

        #statusDetail li {
            list-style-type: none;
            padding-top: 10px;
        }

        .jumbotron>img {
            width: 100%;
            height: 100%;
        }

        #intro h2 {
            font-weight: bold;
        }

        @media screen and (min-width:960px) {
            #intro h2 {
                margin-bottom: 30px;
                font-size: 23px;
            }

            #right_jumbotron {
                width: 400px;
                height: 300px
            }

            #left_jumbotron {
                width: 600px;
                height: 300px
            }
        }

        #yujin a {
            color: #fff;
        }

        #yujin :hover {
            color: #fff;
            text-decoration: none;
        }

        @media screen and (min-width: 768px) and (max-width: 959px) {
            #intro h2 {
                margin-bottom: 20px;
                font-size: 18px;
            }

            #right_jumbotron {
                width: 550px;
                height: 400px;
            }

            #left_jumbotron {
                width: 550px;
                height: 400px;
            }
        }

        @media screen and (max-width:767px) {
            #intro h2 {
                margin-bottom: 10px;
                font-size: 13px;
            }

            #right_jumbotron {
                width: 260px;
                height: 200px;
            }

            #left_jumbotron {
                width: 260px;
                height: 200px;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
</head>

<body style="background-color:rgb(255,252,239)">
<jsp:include page="header.jsp"></jsp:include>

<div class="p-5 py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6 pl-4" style="">
                <h3 class="text-left" style="	text-shadow: 6px 2px 6px orange;margin-top:80px">Jejuggut</h3>
                <h1 class="display-5 text-left" style="text-shadow: black 0px 0px 1px;">제주껏에 가입하신 것을<br>환영합니다.<br>&nbsp;<br>이제 모임에 가입하세요!</h1>
                <div class="row">
                </div>
            </div>
            <div class="col-md-6 text-center pt-5" style="margin-top:100px">
                <i class="fa fa-user-circle text-center text-warning fa-fw w-50 fa-5x" style="font-size: 150pt;" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</div>
<div class="py-5 mt-4" style="">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center" style="margin-top:200px;"></div>
        </div>
        <div class="row">
            <div class="col-md-6 text-right"><a class="btn btn-outline-warning text-muted" href="/JSP/login/login.jsp" style="margin-right: px; color: black; background-color: rgb(244, 160, 100);">로그인</a></div>
            <div class="col-md-6 text-left"><a class="btn btn-outline-warning ml-2 text-muted" href="/JSP/index.jsp" style="color: black; background-color: rgb(244, 160, 100);">메인화면</a></div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<footer class="page-footer font-small indigo">
    <center>
        <div style="background-color:#404040;" class="container-fluid footer_option" id="yujin">
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
                <br><br>
                <center>
                    <p>Jeju Social Project : JSP<br> © 2019. 유단자 All right reserved. </p>
                </center><br>
            </div>
        </div>
    </center>
</footer>
</body>

</html>