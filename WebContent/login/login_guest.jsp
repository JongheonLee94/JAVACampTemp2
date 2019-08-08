<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="../css/common/catchReview.css">
<link rel="stylesheet" href="../css/common/header.css">
<link rel="stylesheet" href="../css/common/footer.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet" href="../css/login/loginForm.css">
<style>
</style>
<script>
	window.onload=function(){
		var log=document.getElementById("log");
		var op=document.getElementById("btn");

	
	}
</script>


</head>
<body>
<div id="section-1"class="container">

	<div class="card bg-light">
		<article class="card-body mx-auto">
		<div style="text-align:center"><a href="login.jsp">ȸ�� �α��� </a><a href="login_guest.jsp">�Խ�Ʈ �α���</a></div>
		
			<h4 class="card-title mt-3 text-center">�Խ�Ʈ �α���</h4>
			<br>
			<p class="divider-text">
				<span class="bg-light">OR</span>
			</p>
			<div id="section-1" class="container">
				<div class="row">
					<div class="loginSection">
						<div class="account-wall">
							<img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
							alt="">
							
						<form id ="log" class="form-signin" method="post" action="../login_guest.do">
								<input type="text" class="form-control" name="phone" placeholder="ID" required autofocus>
								<input type="password" class="form-control" name="pw" placeholder="Password" required>
								<p id="loginFail" class="checkResult"></p>
								<button id="btn" class="btn btn-lg btn-primary btn-block" type="submit">
								Sign in</button>
								<label class="checkbox pull-left">
									<input type="checkbox" value="remember-me" style="margin-left:10px;">
									<p style="margin-left:30px;">Remember me</p>
								</label>
								<a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
							</form>
							
							
						</div>
						<a href="../join/join.jsp" class="text-center new-account">Create an account </a>
					</div>
				</div>
			</div>
		</article>
	</div> <!-- card.// -->

</div> 
	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

<script>
	$('#radio_member').on('click', function(e){
		var radio_member = $(this).val();
		
	});
	
	$('#radio_guest').on('click', function(e){
		var radio_guest = $(this).val();
		alert(radio_member);
	});
</script>
</body>
</html>