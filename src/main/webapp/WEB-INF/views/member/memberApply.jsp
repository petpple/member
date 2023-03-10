<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>펫시터 지원하기</title>
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
    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    
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
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                   
                   
						<p class="h_font">
						내가 좋아하는일로<br>
						매월 생활비를 벌어보세요.</p><br><br>
					
						<span class="hh2_font">
						방문 펫시터로 지원 후 합격하신다면<br> 
						방문 펫시팅 서비스 제공이 가능한 권한이 주어집니다.<br>
						이 후 위탁 펫시터 지원서 제출시
						모든 서비스 제공이 가능한 펫시터로 활동 할 수 있게 됩니다. <br></span>
					 	</div>
							
						<br><br><br>
						
							<div class="panel panel-default">
						    	<div class="list-group-item list-group-item-action list-group-item-secondary">펫시터 등록 프로세스 및 관리</div>
							   	<br>
							    <div class="panel-body row">
							    
							      <div class="col-sm-2 text-center"><img src="/images/member/hhh.svg" class="svgImg1"><br>동물을 사랑하는<br> 사람 누구나</div> 
							      <div class="col-sm-3 text-center"><img src="/images/member/t.svg" class="svgImg1"><br>성실한 서류 작성</div>
							      <div class="col-sm-2 text-center"><img src="/images/member/y.svg" class="svgImg1"><br>체계적인 등급</div>
							      <div class="col-sm-3 text-center"><img src="/images/member/u.svg" class="svgImg1"><br>편리한 일정관리</div>
							      <div class="col-sm-2 text-center"><img src="/images/member/i.svg" class="svgImg1"><br>매력적인 프로필 정보로 인기있는 펫시터 되기</div>
							    
							   </div>
							 
					</div><!-- .container -->
                </div>
					  			
		        </div>
		    </div>
    

	  			<div class="text-center">
							<a href="memberApplyForm" class="btn" style="background-color:#FE5C17; color:white;" role="button" role="button">방문 펫시터 지원하기</a>
				</div>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

</body>

</html>