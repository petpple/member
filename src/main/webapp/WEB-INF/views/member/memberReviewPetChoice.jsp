<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>후기 작성 페이지</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/library/animate/animate.min.css" rel="stylesheet">
    <link href="/library/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    <link rel="stylesheet" href="/css/member/sitter/sitterDiary.css">
    
    
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
    
    <!-- Template Javascript -->
    
    
   
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
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
        
            <div class="row justify-content-center">
            	<div class="col-lg-2 wow fadeInUp " data-wow-delay="0.2s">
				<c:import url="http://localhost:8092/member/memberSide"></c:import>
			</div>
			
			<div class="col-lg-7">
				<div class="IMG1">
					<img src="/images/member/2.svg" class="svgImg1"> <span
						class="font h_font">후기</span>
				</div>
				<ul class="nav nav-tabs">
					<li class="nav-item">
					<a href="sitterDiaryPetChoice" class="nav-link active"style="color: #FE5C17;">작성 가능한 후기</a></li>
					<li class="nav-item"><a href="memberReviewWritten"
						class="nav-link diary_inactive font_black">작성 한 후기</a></li>
				</ul>
				<div class="box_mi2">
					<span class="l_font" style="font-weight:600;"> 현재 진행 중인 서비스 </span>
					<div class="box_diary_flex">
						<div class="div_horizon" style="margin-top:6px;">
							<span class="badge font_black"
								style="background-color: rgb(225, 199, 199);
								font-size:15px;">긴급-방문서비스</span>
						</div>
						<div class="div_horizon">
							<span class="mb_font">시작일자: </span><span class="m_font">2022-12-12 10:00</span>
							<br> 
							<span class="mb_font">종료일자: </span><span class="m_font">2022-12-12 10:00</span>
						</div>
						<div class="div_horizon">
							<img src="/images/member/profile.svg" style="width: 60px;"><br>
							<span class="mb_font">루카스</span>
						</div>
					</div>
					<br>
					<span class="l_font" style="font-weight:600;">후기 작성할 펫 선택 </span>
					<div class="box_diary_flex">
						<div class="div_horizon">
							<img src="/images/member/profile.png" style="width: 60px;"><br>
							<span class="mb_font">멍멍이</span><br>
							<a href='http://localhost:8092/member/memberReviewForm' class="btn " style="background-color:#FE5C17; color:white">작성</a>
						</div>
						<div class="div_horizon">
							<img src="/images/member/profile.png" style="width: 60px;"><br>
							<span class="mb_font">야용이</span><br>
							<a href='http://localhost:8092/member/memberReviewForm' class="btn" style="background-color:#FE5C17; color:white">작성</a>
						</div>
						<div class="div_horizon">
							<img src="/images/member/profile.png" style="width: 60px;"><br>
							<span class="mb_font">귄터</span><br>
							<a href='http://localhost:8092/member/memberReviewForm' class="btn" style="background-color:#FE5C17; color:white">작성</a>
						</div>					
					</div>
				</div>
			</div>
			<div class="col-lg-3 wow fadeInUp" data-wow-delay="0.2s" >
				<div id="test">
					<c:import url="http://localhost:8092/member/memberCal"></c:import>
				</div>
			</div>
            </div>
        </div>
    </div>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

	<script src="/javascript/main.js"></script>
</body>

</html>