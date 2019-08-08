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
   <link rel="stylesheet" href="../css/club/clubWrite.css">
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
<form method="POST" action="../clubJoin.do" enctype="multipart/form-data">
<div class="container" style="width:70%; margin-bottom: 30px;">

   <div class="row marketing">
      <div class="col-lg-6">
         <div class="blog-header">
            <h2 class="blog-title">[ 모임 등록하기 ]</h2>
            <p class="lead blog-description">

               <div class="row">
                  <div class="col-lg-12">
                     <input type="text" name="title" size="60" placeholder="title" style="width:80%">
                  </div>
               </div>

               <div class="row" style="margin-bottom: 20px; margin-top: 10px;">
                  <div class="col-lg-12" style="padding-right: 70px;">
                     <textarea rows="9" cols="75" name="content" placeholder="content"
                     style="width:100%;">HelloWorld</textarea>
                  </div>
               </div>

               <div class="row">
                  <div class="col-lg-6">
                     <span>멘토&nbsp;</span><span> name</span>
                     </div>
                  <div class="col-lg-6">
                     <span>멘토&nbsp;</span><span> certi</span>
                  </div>
               </div>

               <div class="row">
                  <div class="col-lg-6">
                     <span>가격&nbsp;</span> <input type="text" size="20" name="price" placeholder="price" style="width:80%">
                  </div>
                  <div class="col-lg-6">
                     <span>정원&nbsp;</span> <input type="text" name="entryNum" placeholder="entryNum" style="width:80%">
                  </div>
               </div>

               <div class="row">
                  <div class="col-lg-6">
                     <span>시작일&nbsp;</span> <input type="text" name="sDate" placeholder="Sdate" style="width:80%">
                  </div>
                  <div class="col-lg-6">
                     <span>마감일&nbsp;</span> <input type="text" name="eDate" placeholder="Edate" style="width:80%">
                  </div>
               </div>

            <p>
         </div>
         
      </div>
<!-- 왼쪽 -->
      <div class="col-lg-6">
         <div class="jumbotron">
            <h1>Jumbotron heading</h1>
            <p><input type="file" name="mainPic"></p>
         </div>
      </div>

<!-- 오른쪽 -->
   </div>
   <hr>
</div>

<!-- 3. Main -->
<div class="container" style="width:70%">
   <input type="button" id = "btn_add" value="추가하기">
   <div id = "boxd"></div>

<center><div class="btn btn-warning btn-lg btn-block" style="width:100%; margin-top:50px; margin-bottom:50px;">
<input type="submit" value = "등록하기">
</div></center>

</div></form>
<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="./js/index/mapStoreList.js"></script>
<script>
   var dateTag = 
      '<div class="row" style="margin-bottom: 30px;">' +
         '<hr>'+
         '<div class="col-lg-1">Icon</div>' +
         '<div class="col-lg-2"><input type="text" name="scheduleName" size="15" placeholder="Day명"></div>' +
         '<div class="col-lg-5"><textarea cols="45" row="2" name="content" placeholder="내용"></textarea></div>' +
         '<div class="col-lg-2"><input type="text" size="15" name="addr" placeholder="장소"></div>' +
         '<div class="col-lg-1"><input type="text" name="entryName" size="8" placeholer="최대인원"></div>' +
         '<div class="col-lg-1"><button class="close btn_x" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>'+
         '</div>'
          ;   //div에 넣는게 날까? + 네모 칸 안에 넣는게 날까

         $('#btn_add').on('click', function(e){
            $('#boxd').append(dateTag);
            
            $('.btn_x').on('click', function(e){
               $(this).parent().parent().remove();
            }); 
         });
       //div에 넣는게 날까? + 네모 칸 안에 넣는게 날까
</script>
</body>
</html>