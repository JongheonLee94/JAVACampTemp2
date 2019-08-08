<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jc"%><%!MemberVO vo = null;%>
<%
	vo = (MemberVO) session.getAttribute("member");
	if (vo != null)
		System.out.println(vo.getEmail());


	pageContext.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>

<head>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>theJeju</title>
   <link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
   <link rel="stylesheet" href="../css/common/header.css">
   <link rel="stylesheet" href="../css/common/theJeju.css">
   <link rel="stylesheet" href="../css/mypage/clubmypage.css">


   <Style type="text/css">
      body {
         background-color: rgba(248, 208, 148, 0.247);
      }


      .gear-position {
         margin: -20px -10px 0 0;
         float: right;
         width: 30px;
         z-index: 3;
      }

      .mypage-nav {
         border-bottom: solid 1px #ccc;
         margin: 0 0 20px 0px !important;
         padding: 80px 0 5px 0 !important;
         font-weight: 900;
         text-align: center;
         font-size: 12pt;
      }



      .red {
         background-color: rgba(231, 181, 124, 0.918);
         height: 100px;
      }

      .blue {
         background-color: rgb(228, 70, 49);
         height: 100px;
      }

      .green {
         background-color: rgb(255, 255, 255);
         height: 100px;
      }



      .container {
         width: 70%;
         margin-top: 100px;

      }

      .menu {
         margin: 30px 0;
      }

      .img-circle {
         width: 180px;

      }

      .center_col {
         display: flex;
      }

      .center_row {
         text-align: center;
      }

      .boldfont {
         font-weight: 800;
         font-size: 18px
      }

      .table-notborder tr td {
         border-top-width: 0px !important;

      }

      .temp_list {
         padding: 9px 0 9px 0;
         margin: 10px 0 0 0;
         text-align: center;
         border-radius: 5px;
         background-color: rgba(255, 255, 255, 0.808);
         border: 1px solid #ccc;
      }

      .image-panel {
         height: 260px;
         margin: 0px;
         padding: 0px;
      }

      .panel-heading {
         background-color: rgb(255, 255, 255) !important;
      }

      .profile-text {
         width: 200px;
         color: black;
         border-top: none;
         border-left: none;
         border-right: none;
         padding: 6px 0 0 27px;

      }

      @media screen and (max-width: 991px) {
         .infomation-panel {
            padding: 20px 0 0 0;
            margin: 0 0 20px 0;
         }

         .mypage-nav {
            border-bottom: solid 1px #ccc;
            margin: 20px 0 20px 0px !important;
            padding: 80px 0 5px 0 !important;
            font-weight: 700;
            text-align: center;
            font-size: 9pt;
         }

         .gear-position {
            margin: -210px 0px 0 0;
            float: right;
            width: 30px !important;
            z-index: 3;

         }

         .profile-text {
            width: 200px;
            padding: 6px 0 0 17px;

         }

      }
   </Style>
   <script type="text/javascript">
      var toggle = 1;
      function edit_profile() {

         var b = $('#profile').children().children();
         var name = b.children('#name');
         var email = b.children('#email');
         var phone = b.children('#phone');
         if (toggle == 1) {

            name.replaceWith('<input id="name" class="profile-text" type="text" name="name" value="' + name.text() + '"/>');
            email.replaceWith('<input id="email" class="profile-text" type="text" name="email"  value="' + email.text() + '"/>');
            phone.replaceWith('<input id="phone" class="profile-text"  type="text" name="phone"  value="' + phone.text() + '"/>');
            ;
         } else { // 나중에 그냥 리다이렉트로 바꾸자, 1안 서버에서 가져와서 변경을한다. 2번 에러캐치해서한다.
            name.replaceWith('<td id="name" style="color:black; " >' + name.val() + '</td>');
            email.replaceWith('<td id="email" style="color:black;">' + email.val() + '</td>');
            phone.replaceWith('<td id="phone" style="color:black;" >' + phone.val() + '</td>');

         }
         toggle = toggle * (-1);
      }
   </script>
</head>

<body>
   <!-- header 부분-->
   <jsp:include page="../header.jsp"></jsp:include>


   <!-- main -->


   <div class="container">
      <div class="row" style="height: 290px ">
         <div class="image-panel panel panel-default col-md-4 col-xs-12" style="height: 290px;">
            <div class="panel-heading">내 프로필</div>
            <div class="panel-body " style=" text-align:center">

               <div style=" text-align:center width: 200px; height: 210px; overflow: hidden;">
                  <img class="img-circle" src="../images/basic.png"
                  style="z-index: 3;width: 200px; height: auto; margin-top: 10px">

               </div>

               <img class="gear-position " style="" src="../images/settings.png" alt="" data-target="#modal" data-toggle="modal" >

            </div>
         </div>


         <div>
            <div class="infomation-panel col-md-8 col-xs-12">
               <div class="panel panel-default " style="height:200px;margin: 0px 0 5px 0;">
                  <div class="panel-heading">내 정보</div>
                  <div class="panel-body ">
                     <table id="profile" class="table table-notborder" style="margin: 0px !important;">
                        <tbody>
                           <tr>
                              <td>닉네임</td>
                              <td id="name">한유진</td>
                              <td>
                                 <span style="float: right; margin:-10px -10px 0 0;" onclick="edit_profile()"
                                 class="glyphicon glyphicon-pencil"></span> </td>
                              </tr>
                              <tr>
                                 <td>이메일</td>
                                 <td id="email">hanyou96@naver.com</td>
                              </tr>
                              <tr>
                                 <td>전화</td>
                                 <td id="phone">010-5035-9864</td>
                              </tr>
                           </tbody>
                        </table>


                     </div>
                  </div>

                  <div>
                     <ul class="row" style="margin-left:-15px;">
                        <li class="col-xs-6 col-md-3 ">
                           <div class="bg-primary temp_list"><label style="font-size: 8pt;">리뷰</label>
                              <div style="font-size:20px;font-weight: 900;">100개</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3 " style="">
                           <div class="temp_list"><label style="  font-size: 8pt;">현재개설모임</label>
                              <div style="font-size:20px;font-weight: 900;">2개</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3">
                           <div class="temp_list"><label style="font-size: 8pt;">총모임개설수</label>
                              <div style="font-size:20px;font-weight: 900;">5회</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3 ">
                           <div class="temp_list"><label style="font-size: 8pt;">인증여부</label>
                              <div style="font-size:20px;font-weight: 900;">비인증</div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
           <!-- 네비게이션부분-->
         <div class="mypage-nav ">
            <table style="width: 100%">
               <tr class="row">
                  <td class=" col-xs-4"><a href="mypageMain.html">참여모임내역</a></td>
                  <td class=" col-xs-4"><a href="mypagecard.html">카드내역</a></td>
                  <td class=" col-xs-4"><a href="mypageRegist.html">신청자관리</a></td>
               </tr>
            </table>

         </div>



     <!-- 由ъ뒪�듃遺�遺�-->




      <div class="row" style="margin-top: 50px;">
         <p style="font-size:25px" >[�떊泥��옄愿�由�]</p>
      </div>

      <div class="container" style="background-color: #fff; width: 100%; text-align: center; margin-top: 30px;">
      <table class="table">
         <tbody>
            <tr>
               <td>�떊泥��씪</td>
               <td>紐⑥엫</td>
               <td>�씠由�</td>
               <td>�꽦蹂�</td>
               <td>�굹�씠</td>
               <td>�쟾�솕踰덊샇</td>
               <td>�듅�씤�뿬遺�</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
            </tr>
         </tbody>
      </table>
         </div>
   </div>

   <!-- �럹�씠吏��꽕�씠�뀡遺�遺�-->
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


   <!--main end -->
   <footer class="footer-box">
      <div>
         <p class="footer-title">Made by</p>
      </div>
      <div class="row">
         <div class="col-xs-12 col-sm-12" style="height: 2vh"></div>
      </div>
      <div class="row ">
         <div class="col-xs-2 col-sm-1 footer-content"></div>
         <div class="col-xs-4 col-sm-2 footer-content">源��젙�씤</div>
         <div class="col-xs-4 col-sm-2 footer-content">�씠醫낇뿄</div>
         <div class="col-xs-4 col-sm-2 footer-content">媛뺤꽦�쁺</div>
         <div class="col-xs-4 col-sm-2 footer-content">�븳�쑀吏�</div>
         <div class="col-xs-4 col-sm-2 footer-content">�쑀�꽦誘�</div>
         <div class="col-xs-1"></div>
         <div class="row">
            <div class="col-xs-12 col-sm-12" style="height: 5vh"></div>
         </div>
      </div>
   </footer>


   <!-- 紐⑤떖李� -->
      <form id="frm" action="ddd.jsp" method="post">
      <div class="modal" id="modal" tabindex="-1">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  �봽濡쒗븘 �궗吏� 蹂�寃�
                  <button class="close" data-dismiss="modal">&times;</button>
               </div>
               <div class="modal-body" style="text-align: center;">
                  <div class="row">
                     <div class="col-md-6"></div>
                     <div class="col-md-6"></div>
                  </div>
                  <div class="row" style="margin-bottom: 12px; margin-top: 50px;">
                     <div class="col-sm-12">
                        <img id="image_section"src="../images/basic.png" style="width: 120px;height: 120px;border-radius: 60px;">
                     </div>
                  </div>

                  <div class="row" style="margin-bottom: 15px; margin-top: 50px;">
                     <div class="col-sm-12">
                        �봽濡쒗븘 �궗吏� <input type="button" id="btn_profile" class="btn btn-default" value="�궗吏꾩꽑�깮" style="margin-left: 30px;">
                        <input type="file" id="fileName" style="display: none;">
                     </div>
                  </div>

                  <div class="row" style="margin-bottom: 15px;">
                     <div class="col-sm-12">
                        �봽濡쒗븘 �궗吏꾩쓣 蹂�寃쏀븯�떆寃좎뒿�땲源�? <input id="btn_modify" type="button" class="btn btn-default" value="蹂�寃쏀븯湲�" style="margin-left: 30px;">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </form>
   <!-- �젣�씠荑쇰━ �옄諛붿뒪�겕由쏀듃 異붽��븯湲� -->
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <!-- 遺��듃�뒪�듃�옪 �옄諛붿뒪�겕由쏀듃 異붽��븯湲� -->
   <script src="../js/bootstrap.js"></script>
   <!-- <script type="text/javascript" src="../js/index/mapStoreList.js"></script> -->
   <script>
   $('.box').hover(function () {
      $(this).css("display", "none");
   });


   $('#btn_profile').on('click', function(e){
      $('#fileName').trigger('click');
   }); 

      function readURL(input) {
         if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
               $('#image_section').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
      }

      $('#fileName').change(function() {
         readURL(this);
      });

      $('#btn_modify')


      $('#btn_modify').on('click', function(e){
         $('#frm').submit();
      });



</script>
</body>

</html>
