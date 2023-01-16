<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Main</title>
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

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/css/main.css"> -->
<link rel="stylesheet" href="/css/user/userMain.css">
<link rel="stylesheet" href="/css/user/uMain.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://kit.fontawesome.com/fcbb796457.js"
	crossorigin="anonymous"></script>

<script>
	function clickFunc() {
		swal({
			title : "로그인 회원만 이용 가능합니다.",
			button : "확인",
		});
	}
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
	
	<div class="container-xxl wow fadeInUp" data-wow-delay="0.2s">
		<div class="container text-center">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="box">
						<div class="text-center img">
							<div class="col-md-12 mContent">
								<h1 class="mainTitle">요청이 완료되었습니다</h1>
								<h2 class="mainTitle">Kiwi</h2>
								<button class="btn" onclick="location.href='memberMain'">메인으로 가기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	

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