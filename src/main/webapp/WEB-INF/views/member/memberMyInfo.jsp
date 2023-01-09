<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>sitter-sample</title>
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
        <div class="container">
            <div class="row justify-content-center">
            
            	 	<label for="phone">연락처</label><br>
							   	<input type="text" class="form-control" id="phone" placeholder="01011112222">
							 	<br><br>
							 
							 	<label for="pw">새로운 비밀번호를 입력해주세요.</label><br>
							   	<input type="text" class="form-control" id="pw" placeholder="16자 이내로 입력해주세요">
							 	<br><br>
							 
							 	<!-- 여기부터는 위탁펫시터, 의뢰인 용 -->
							 	<label for="home">거주지 주소</label><br>
							   	<input type="text" class="form-control" id="home" placeholder="예) 서울시 강남구 논현동">
							 
							 	<br><br>
							 	<label for="homeDetail">거주지 상세주소</label><br>
							   	<input type="text" class="form-control" id="homeDetail" placeholder="예) 101동 101호">
							 	
							 	<br><br>
							 	<label for="homeCate">거주지 유형</label>
							 	<br>
							 	<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="1">
									    단독주택&emsp;&emsp;
									 </label>
								</div>
							 	<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="2">
									    아파트&emsp;&emsp;
									 </label>
								</div>
								<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="3">
									    빌라&emsp;&emsp;
									 </label>
								</div>
							 	<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="4">
									    오피스텔&emsp;&emsp;
									 </label>
								</div>
								<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="5">
									    원룸
									 </label>
								</div>
								<div class="radio">
									<label>
									    <input type="radio" name="homeCate" id="homeCate2" value="6">
									    공동주택
									 </label>
								</div>
            
            
            
            
            </div>
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
</body>

</html>