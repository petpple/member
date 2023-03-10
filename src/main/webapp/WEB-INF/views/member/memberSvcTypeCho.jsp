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
    
	<link rel="stylesheet" href="/css/member/memberMain.css">
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	
<style type="text/css">

	.box_mi_t {
	background-color: rgba(251, 238, 231, 0.636);
	border: 1px solid rgba(227, 226, 226, 0.913);
	box-shadow: 1px 1px 1px rgb(222, 214, 214);
	border-radius: 4px;
	padding: 5px;
	margin-bottom: 20px;
	}
	
	.btn {
	background-color: #FE5C17;
	color: white;
	text-align: center;
	}

	.btn-reset {
	background-color: #cccccc;
	color: white;
	text-align: center;
	}
	
	.sss_font {
		font-size:13px;
		color: #FF8C5B;
	}
	
	.visitDiv {
		margin: 20px;
	/* 	position: absolute; */
		width: 280px;
		height: 280px;
		left: 700px;
		top: 249px;
		
		background: #F4F4F4;
		border: 1px solid #D2D1D1;
		box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.25);
		border-radius: 5px;
		margin: 50px;
	}
	
	.fosDiv {
	/* 	position: absolute; */
		width: 280px;
		height: 280px;
		left: 1200px;
		top: 249px;
		
		background: #F4F4F4;
		border: 1px solid #D2D1D1;
		box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.25);
		border-radius: 5px;
		margin: 370px; 
	}
</style>
	
	
<script type="text/javascript">
	function CountDownTimer(dt, id) {
    var end = new Date(dt);
    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;
    function showRemaining() {
        var now = new Date();
        var distance = end - now;
        if (distance < 0) {
            clearInterval(timer);
            $("#"+id).css('color','red');
            return;
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);
        
        var text = hours + '?????? '+minutes + '??? '+ seconds + '???';
        document.getElementById(id).innerHTML = text;
    }
    timer = setInterval(showRemaining, 1000);
	}
	
	$(function(){
		CountDownTimer('01/04/2023 16:25:00', 'remainTime');
	});

</script>
    
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

    <!-- ???????????? ?????? ?????? -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
       
				<div class="row">
				<div class="col-lg-2" id="info">
					<c:import url="/member/memberSide"></c:import>
				</div>
				
				<div class="col-md-7">
				<div class="IMG1">
					<img src="/images/member/sitting_on.svg" class="svgImg1"> 
					<span class="font h_font">?????? ?????? ?????????</span>
				</div>
				
					<div class="box_mi_t row">
						<div>
							- Care Type : <span>??????</span> ??????<br>
							<br>
						</div>
						
						<div class="col-sm-6">
							<a href="memberUsvcPetCho" class="visit">
								<img src="/images/member/visit.svg" class="visit" id="visit"> <br>
							 </a>
						</div>

						<div class="col-sm-6">
							 <a href="memberUsvcPetCho" class="fos">
								<img src="/images/member/fos.svg" class="fos" id="fos"> <br>
							 </a>
						</div>
					
					</div>
				
					<div class="IMG1">
					<img src="/images/member/q.svg" class="svgImg1"> 
					<span class="font h_font">?????? ?????? ????????? ???? </span>
					</div>				
					<div class="box_mi_t">
					<p class="l_font">
						?????? ?????? ???????????? ???????????? ????????? ????????? ????????? 72?????? ????????? 1?????? ????????? <br>
						???????????? ????????? ???????????? ????????? ?????? ??????????????????.<br>
						?????? ?????????(??????, ??????)??? ????????? ????????? 72?????? ?????? ?????? ????????? ???????????? ?????? ???????????? ??????????????????.<br>
						?????? ?????? ???????????? 20,000?????? ???????????? ????????????.<br>
						????????? ??? ??? ????????? ??? ?????? ????????? ????????? ??? ??? ????????????.<br>
						??? ????????? ????????? ??????(??????) ??? ?????? ?????? 72?????? ?????? ??? ?????? ?????? ????????? ??? ????????????.<br>			
					</p>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary" onclick="history.back();">?????? ??????</button>
					</div>
					
				</div>
				<div class="col-lg-3">
					<div id="test">
						<c:import url="/member/memberCal"></c:import>
					</div>
				</div>
			</div>
				
            </div><!-- row justify-content-center -->
        </div><!-- .container -->
    </div><!-- .container-xxl py-5 wow fadeInUp -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    
    
</body>



</html>

