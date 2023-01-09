<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>user-sample</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/library/animate/animate.min.css" rel="stylesheet">
<link href="/library/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/css/main.css"> -->
<link rel="stylesheet" href="/css/user/userLoginForm.css">
<link rel="stylesheet" href="/css/user/uMain.css">

<script type="text/javascript">
	$(document).ready(function()
	{
		$("#submitBtn").click(function()
		{
			if($("#userId").val()=="")
			{
				$("#err1").html("아이디를 입력해 주세요.").css("display","inline");
				return;
			}
			else if ($("#userPw").val()=="")
			{
				$("#err1").html("비밀번호를 입력해 주세요.").css("display","inline");
				return;
			}
			$("#userForm").submit();
		})
		
		$("#pSubmitBtn").click(function()
		{
			if($("#petsitterId").val()=="")
			{
				$("#err2").html("아이디를 입력해 주세요.").css("display","inline");
				return;
			}
			else if ($("#petsitterPw").val()=="")
			{
				$("#err2").html("비밀번호를 입력해 주세요.").css("display","inline");
				return;
			}
			$("#petsitterForm").submit();
		})
	})
</script>

</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<div>
		<c:import url="header.jsp"></c:import>
	</div>

	<!-- 여기다가 코드 작성 -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="box">
						<div class="tab_content">
							<input type="radio" name="tabmenu" id="tab01" checked> <label
								class="h2_font" for="tab01">일반회원</label> <input type="radio"
								name="tabmenu" id="tab02"> <label class="h2_font "
								for="tab02">펫시터</label>
							<div class="conbox con1">
								<div class="login">
									<h1 class="h_font loginTitle">로그인</h1>
								</div>
								<form action="#" method="post" id="userForm">
									<div>
										<h3 class="mb_font id">아이디</h3>
										<input type="text" name="userId" id="userId" placeholder="아이디">
									</div>
									<div>
										<h3 class="mb_font pw">비밀번호</h3>
										<input type="password" name="userPw" id="userPw"
											placeholder="******">
									</div>
									<div class="err">
										<span class="s_font" id="err1"></span>
									</div>
									<div>
										<input type="button" value="로그인" id="submitBtn"
											class="btn submitBtn m_font">
									</div>
									<div>
										<input type="button" value="회원가입" id="signUpBtn"
											class="btn signUpBtn m_font" onclick="#">
										<!-- 회원 가입 폼으로 -->
									</div>
									<div class="forget">
										<a href="#">아이디 / 비밀번호를 잊어버리셨나요?</a>
									</div>
								</form>
							</div>
							<!-- 펫시터 로그인 -->
							<div class="conbox con2">
								<div class="login">
									<h1 class="h_font loginTitle">로그인</h1>
								</div>
								<form action="#" method="post" id="petsitterForm">
									<div>
										<h3 class="mb_font id">아이디</h3>
										<input type="text" name="petsitterId" id="petsitterId"
											placeholder="아이디">
									</div>
									<div>
										<h3 class="mb_font pw">비밀번호</h3>
										<input type="password" name="petsitterPw" id="petsitterPw"
											placeholder="******">
									</div>
									<div class="err">
										<span class="s_font" id="err2"></span>
									</div>
									<div>
										<input type="button" value="로그인" id="pSubmitBtn"
											class="btn pSubmitBtn m_font">
									</div>
									<div class="forget">
										<a href="#">아이디 / 비밀번호를 잊어버리셨나요?</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/library/wow/wow.min.js"></script>
	<script src="/library/easing/easing.min.js"></script>
	<script src="/library/waypoints/waypoints.min.js"></script>
	<script src="/library/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="/javascript/main.js"></script>
</body>

</html>