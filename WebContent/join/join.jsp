<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<title>register</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>register</title>
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="../css/common/catchReview.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<link rel="stylesheet" href="../css/common/footer.css">
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

	<link rel="stylesheet" href="../css/join/registerForm.css">
</head>
<body>

	<!------ Include the above in your HEAD tag ---------->


	<div id="section-1" class="container">

		<div class="card bg-light">
			<article class="card-body mx-auto">
				<h4 class="card-title mt-3 text-center">Create Account</h4>
				<p class="text-center">Get started with your free account</p>


				<p class="divider-text">
					<span class="bg-light">OR</span>
				</p>
				<form id="join" action="/JSP/join.do" method="post">
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-envelope"></i>
							</span>
						</div>
						<input id="email" name="email" class="form-control"
						placeholder="Email address" type="email" onblur="checkEmail()">
						<button type="button" class="btn btn-primary btn-block"
						onclick="checkEmail()" style="width: 23%">以�蹂듯����</button>
					</div>
					<p id="checkEmail" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input id="password" name="pw" class="form-control"
						placeholder="Create password" type="password" onblur="checkPassword()">
					</div>
					<p id="checkPassword" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input id="password2" class="form-control"
						placeholder="Repeat password" type="password" onblur="checkPassword2()">
					</div>
					<p id="checkPassword2" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input id="name" name="name" class="form-control"
						placeholder="Full name" type="text" onblur="checkName()">
					</div>
					<p id="checkName" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i>
							</span>
						</div>
						<input id="phone" name="phone" class="form-control"
						placeholder="not include '-'" type="text" onblur="checkPhone()">
						<button type="button" id="btn-certi"
						class="btn btn-primary btn-block" style="width: 23%" onclick="certificationUser()">蹂몄�몄�몄�</button>
					</div>
					<p id="checkPhone" class="checkResult"></p>
					<!-- form-group// -->
					

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i>
							</span>
						</div>


						<div class="input-group-prepend" style="width:65%">
							<input type="text" id="datepicker" class="form-control" placeholder="input age">
						</div>

						<div class="input-group-prepend radio" style="margin-top: 0px; margin-left:20px;">
							<label class="radio-inline">
								<input type="radio" name="gender" value="0">
								M
							</label>
							<label class="radio-inline">
								<input type="radio" name="gender" value="1">
								W
							</label>
						</div>


					</div>

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i>
							</span>
						</div>
						<input id="address1" name="addr1"
						class="form-control" placeholder="address" type="text">
						<button type="button" class="btn btn-primary btn-block"
						style="width: 23%" onclick="sample6_execDaumPostcode()">二쇱��寃���</button>
					</div>
					

					<!-- form-group end.// -->
					<div class="form-group input-group">
						<div class="input-group-prepend" style="margin-right: 25px;">
						</div>
						<input id="address2" name="addr2"
						class="form-control" placeholder="detail-address" type="text">
					</div>
					<!-- form-group end.// -->
					<div class="form-group">
						<input type="submit"/>
						<button type="button" onclick="join()" class="btn btn-primary btn-block"
						style="width: 100%">Create Account</button>
					</div>
					<!-- form-group// -->
					<p class="text-center">
						Have an account? <a href="../login/loginForm.jsp">Log In</a>
					</p>
				</form>
			</article>
		</div>
		<!-- card.// -->

	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script type="text/javascript"
	src="http://t1.daumcdn.net/postcode/api/core/190107/1546836247227/190107.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
				// �������� 寃���寃곌낵 ��紐⑹�� �대┃������ �ㅽ���� 肄���瑜� ���깊���� 遺�遺�.

				// 媛� 二쇱���� �몄� 洹�移��� �곕�� 二쇱��瑜� 議고�⑺����.
				// �대�ㅼ�ㅻ�� 蹂���媛� 媛��� ���� 寃쎌�곗�� 怨듬갚('')媛��� 媛�吏�誘�濡�, �대�� 李멸����� 遺�湲� ����.
				var addr = ''; // 二쇱�� 蹂���

				//�ъ�⑹��媛� ������ 二쇱�� ������ �곕�� �대�� 二쇱�� 媛��� 媛��몄�⑤��.
				if (data.userSelectedType === 'R') { // �ъ�⑹��媛� ��濡�紐� 二쇱��瑜� �������� 寃쎌��
					addr = data.roadAddress;
				} else { // �ъ�⑹��媛� 吏�踰� 二쇱��瑜� �������� 寃쎌��(J)
					addr = data.jibunAddress;
				}

				document.getElementById("address1").value = addr;
				document.getElementById("address2").focus();
			}
		}).open();
		}

	</script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../js/join/join.js"></script>
</body>
</html>