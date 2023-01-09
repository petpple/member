<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>member-sample</title>
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
    
<style type="text/css">

	.container {margin-bottom: 20px;}
	.panel-heading {text-align: center; font-size: 17px;}
	.btn {background-color: #FE5C17; font-weight: bold; color: white; text-align: center;}
	.hh2_font{
		color: #FE5C17;
		font-size: 22px;
		font-weight: 500;
	}

</style>
    
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
                   
                   
						<p class="h_font">
						방문 펫시터 지원서 제출이 완료됐습니다 : )</p><br><br>
					
						<p class="hh2_font">
						제출하신 펫시터 지원서의 결과는 매일 15시에 최종 발표해드립니다.</p>
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
							 
					  			<a href="" class="btn" role="button">홈으로</a>
				</div><!-- .container -->
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>