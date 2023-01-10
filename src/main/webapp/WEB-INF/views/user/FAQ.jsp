<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
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

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/css/main.css"> -->
<link rel="stylesheet" href="/css/user/FAQ.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>

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
					<div class="FAQ_Area">
						<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						  <li class="nav-item" role="presentation">
						    <button class="nav-link active" id="userFAQ-tab" data-bs-toggle="pill" data-bs-target="#userFAQ" type="button" role="tab" aria-controls="userFAQ" aria-selected="true">의뢰자님을 위한 FAQ</button>
						  </li>
						  <li class="nav-item" role="presentation">
						    <button class="nav-link" id="petsitterFAQ-tab" data-bs-toggle="pill" data-bs-target="#petsitterFAQ" type="button" role="tab" aria-controls="petsitterFAQ" aria-selected="false">펫시터님을 위한 FAQ</button>
						  </li>
						</ul>
						
						<div class="tab-content" id="pills-tabContent">
						  <div class="tab-pane fade show active" id="userFAQ" role="tabpanel" aria-labelledby="userFAQ-tab">
						  	<div>
						  		<c:import url="/user/userFAQ"></c:import>
							</div>
						  </div>
						  <div class="tab-pane fade" id="petsitterFAQ" role="tabpanel" aria-labelledby="petsitterFAQ-tab">
						  	<div>
						  		<c:import url="/user/petsitterFAQ"></c:import>
						  	</div>
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