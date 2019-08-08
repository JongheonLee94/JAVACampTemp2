<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
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
         } else { // ���߿� �׳� �����̷�Ʈ�� �ٲ���, 1�� �������� �����ͼ� �������Ѵ�. 2�� ����ĳġ�ؼ��Ѵ�.
            name.replaceWith('<td id="name" style="color:black; " >' + name.val() + '</td>');
            email.replaceWith('<td id="email" style="color:black;">' + email.val() + '</td>');
            phone.replaceWith('<td id="phone" style="color:black;" >' + phone.val() + '</td>');

         }
         toggle = toggle * (-1);
      }
   </script>
</head>

<body>
   <!-- header �κ�-->
   <jsp:include page="../header.jsp"></jsp:include>


   <!-- main -->


   <div class="container">
      <div class="row" style="height: 290px ">
         <div class="image-panel panel panel-default col-md-4 col-xs-12" style="height: 290px;">
            <div class="panel-heading">�� ������</div>
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
                  <div class="panel-heading">�� ����</div>
                  <div class="panel-body ">
                     <table id="profile" class="table table-notborder" style="margin: 0px !important;">
                        <tbody>
                           <tr>
                              <td>�г���</td>
                              <td id="name">������</td>
                              <td>
                                 <span style="float: right; margin:-10px -10px 0 0;" onclick="edit_profile()"
                                 class="glyphicon glyphicon-pencil"></span> </td>
                              </tr>
                              <tr>
                                 <td>�̸���</td>
                                 <td id="email">hanyou96@naver.com</td>
                              </tr>
                              <tr>
                                 <td>��ȭ</td>
                                 <td id="phone">010-5035-9864</td>
                              </tr>
                           </tbody>
                        </table>


                     </div>
                  </div>

                  <div>
                     <ul class="row" style="margin-left:-15px;">
                        <li class="col-xs-6 col-md-3 ">
                           <div class="bg-primary temp_list"><label style="font-size: 8pt;">����</label>
                              <div style="font-size:20px;font-weight: 900;">100��</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3 " style="">
                           <div class="temp_list"><label style="  font-size: 8pt;">���簳������</label>
                              <div style="font-size:20px;font-weight: 900;">2��</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3">
                           <div class="temp_list"><label style="font-size: 8pt;">�Ѹ��Ӱ�����</label>
                              <div style="font-size:20px;font-weight: 900;">5ȸ</div>
                           </div>
                        </li>
                        <li class="col-xs-6  col-md-3 ">
                           <div class="temp_list"><label style="font-size: 8pt;">��������</label>
                              <div style="font-size:20px;font-weight: 900;">������</div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <!-- �׺���̼Ǻκ�-->
         <div class="mypage-nav ">
            <table style="width: 100%">
               <tr class="row">
                  <td class=" col-xs-4"><a href="mypageMain.html">�������ӳ���</a></td>
                  <td class=" col-xs-4"><a href="mypagecard.html">ī�峻��</a></td>
                  <td class=" col-xs-4"><a href="mypageRegist.html">��û�ڰ���</a></td>
               </tr>
            </table>

         </div>




         <!-- ����Ʈ�κ�-->

         <div class="row" style="margin-top: 50px;">
            <p style="font-size:25px" >[������ REPORT]</p>
         </div>

         <div class="row" style="margin-top: 50px; padding-left: 20px; display: flex;  flex-direction: row; position: relative;">
            <select class="form-control" style="width: 170px; margin-right: 30px;">
               <option>���Ӹ�</option>
               <option>2</option>
               <option>3</option>
               <option>4</option>
            </select>
            <input type="button" class="btn btn-default" value="��û�ϱ�" style="text-align: center; position: absolute; right: 20px;" data-target="#request_modal" data-toggle="modal">
         </div>

         <div class="container" style="background-color: #fff; width: 100%; text-align: center; margin-top: 30px;">
            <table class="table">
               <tbody>
                  <tr>
                     <td style="width:25%">����Ⱓ</td>
                     <td style="width:15%">��û����</td>
                     <td style="width:15%">�̸�</td>
                     <td style="width:10%">������</td>
                     <td style="width:15%">ó����</td>
                     <td style="width:10%">���λ���</td>
                  </tr>
                  <tr>
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
                  </tr>
                  <tr>
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
                  </tr>
               </tbody>
            </table>
         </div>
      </div>

      <!-- ���������̼Ǻκ�-->
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
            <div class="col-xs-4 col-sm-2 footer-content">������</div>
            <div class="col-xs-4 col-sm-2 footer-content">������</div>
            <div class="col-xs-4 col-sm-2 footer-content">������</div>
            <div class="col-xs-4 col-sm-2 footer-content">������</div>
            <div class="col-xs-4 col-sm-2 footer-content">������</div>
            <div class="col-xs-1"></div>
            <div class="row">
               <div class="col-xs-12 col-sm-12" style="height: 5vh"></div>
            </div>
         </div>
      </footer>


      <!-- ���â -->
      <form id="frm" action="ddd.jsp" method="post">
         <div class="modal" id="modal" tabindex="-1">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     ������ ���� ����
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
                           ������ ���� <input type="button" id="btn_profile" class="btn btn-default" value="��������" style="margin-left: 30px;">
                           <input type="file" id="fileName" style="display: none;">
                        </div>
                     </div>

                     <div class="row" style="margin-bottom: 15px;">
                        <div class="col-sm-12">
                           ������ ������ �����Ͻðڽ��ϱ�? <input id="btn_modify" type="button" class="btn btn-default" value="�����ϱ�" style="margin-left: 30px;">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </form>



      <!-- ���â -->
      <div class="modal" id="request_modal" tabindex="-1">
         <form id="frm_regist" method="POST" action="../support_regist.do" enctype="multipart/form-data">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  ������ �������� ��û����
                  <button class="close" data-dismiss="modal">&times;</button>
               </div>
               <div class="modal-body" style="text-align: center;">
                  <div class="row">
                     <div class="col-sm-12">
                        <p style="float: left; padding-left: 20px; padding-bottom: 20px;">Mento Name</p>
                        <table id="writeTable"class="table">
                           <tbody>
                              <tr>
                                 <td><p>����Ⱓ</p></td>
                                 <td><p>
                                    <input type="text" class="form-control" placeholder="��������" name="sDate">
                                 </p></td>
                                 <td><p>
                                    <input type="text" class="form-control" placeholder="��������" name="eDate">
                                 </p></td>
                              </tr>
                              <tr>
                                 <td><p>ǰ��</p></td>
                                 <td colspan="2"><p>
                                    <select class="form-control" name="item">
                                       <option>�������</option>
                                       <option>Ȱ����</option>
                                       <option>�����ú�</option>
                                    </select>
                                 </p></td>
                              </tr>
                              <tr>
                                 <td><p>��û���ɱݾ�</p></td>
                                 <td colspan="2"><p>
                                    <input type="text" class="form-control" placeholder="��û���ɱݾ�" name="limitMoney">
                                 </p></td>
                              </tr>
                              <tr>
                                 <td><p>��û�ݾ�</p></td>
                                 <td colspan="2"><p>
                                    <input type="text" class="form-control" placeholder="��û�ݾ�" name="requestMoney">
                                 </p></td>
                              </tr>
                              <tr>
                                 <td><p>����</p></td>
                                 <td colspan="2"><p>
                                    <textarea class="form-control" style="height: 100px;" name="content"></textarea>
                                 </p></td>
                              </tr>
                              <tr>
                                 <td><p>÷������</p></td>
                                 <td colspan="2"><p>
                                    <input type="file" id="fileReport" class="form-control" name="fileReport" style="display : none;">
                                    <input type="text" id="txt_report" class="form-control" placeholder="Ŭ�����ּ���">
                                 </p></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  <div class="row" style="margin-bottom: 15px;">
                     <div class="col-sm-12">
                        <input id="btn_regist"type="button" class="btn btn-default" value="���ο�û">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </form>
      </div>

      <!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
      <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
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


         $('#btn_modify').on('click', function(e){
            $('#frm').submit();
         });

      $('#btn_regist').on('click', function(e){
         $('#frm_regist').submit();
      });
      
      $('#txt_file').on('click', function(e){
         $('#frm_regist').submit();
      });
      
      $('#txt_report').on('click', function(e){
            $('#fileReport').trigger('click');
         }); 
      
      $('#fileReport').change(function() {
         var valu = $(this).val();
         var value = valu.substring(12);
         $('#txt_report').val(value);
      });

      </script>
   </body>

   </html>