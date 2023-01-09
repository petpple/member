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
    
    <link rel="stylesheet" href="/css/member/sitter/sitterMain.css">
	<link rel="stylesheet" href="/css/member/user/userLoginForm.css">
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    
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
        
        var text = hours + '시간 '+minutes + '분 '+ seconds + '초';
        document.getElementById(id).innerHTML = text;
    }
    timer = setInterval(showRemaining, 1000);
}
// 	$(function(){
// 		CountDownTimer('01/07/2023 16:25:00', 'remainTime');
// 	});

</script>

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
.sss_font{
	font-size:13px;
	color: #FF8C5B;
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
        <div class="container">
            <div class="row justify-content-center">
            
            		<div class="col-lg-7">
						<div class="IMG1">
							<img src="/images/member/sitting_on.svg" class="svgImg1"> 
							<span class="font h_font">긴급 요청 서비스 등록</span>
						</div>
					<div class="box_mi_t">
					
					
					<span id="remainTime" class="s_font"></span>
					<div class="serv_on">
						<table class="table tab s_font">
							<!-- 
							<tr>
								<td class="l_font" style="text-align: center;">연락처</td>
							</tr>

							<tr>
								<td>
 									<label for="tel1" class="form-label">펫시터님과 연락할 연락처를 - 없이 입력해주세요.<span class="sss_font"> * </span></label>
 									<input type="tel" class="form-control" id="tel1" placeholder="예) 01012345678">
 								</td>
								
							</tr>
							 -->
							
							<tr>
								<td class="l_font" style="text-align: center;">주소</td>
							</tr>

							<tr>
								<td>
 									<label for="addr" class="form-label">의뢰자님의 주소를 입력해주세요.<span class="sss_font"> * </span></label>
 									<input type="text" class="form-control" id="addr" placeholder="예) api쓸것임">
 								</td>
								
							</tr>
						
							<tr>
								<td class="l_font " style="text-align: center;">긴급 요청 서비스 일정</td>
							</tr>
							<tr>
								<td> 서비스가 필요한 날짜를 선택 해 주세요 <span class="sss_font"> * </span></td>
 								
							</tr>
							
							<tr>
								<td class="l_font" style="text-align: center;">제목</td>
							</tr>
							
							<tr>
								<td>
 								
 									<label for="exampleFormControlInput1" class="form-label">긴급 요청 서비스 제목을 입력 해 주세요.<span class="sss_font"> * </span></label>
  									<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="예) 우리 보리 돌봐주실분 급하게 구합니다.">
 								</td>
								
							</tr>

							<tr>
								<td class="l_font" style="text-align: center;">요청사항</td>
							</tr>

							<tr>
								<td>
 									<label for="exampleFormControlTextarea1" class="form-label">펫시터님에게 전달할 요청 서비스 사항을 입력 해 주세요.<span class="sss_font"> * </span></label>
  									<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="예) 밥은 3번, 간식은 1번 주시면됩니다. 목욕은 제가 시킬게요 잘 부탁 드립니다."></textarea>
 								</td>
								
							</tr>

						</table>
						
					<div>
					    <label for="agree"><span> 내 단골들에게 긴급 요청 서비스 등록 알람을 보내겠습니까?</span></label>
						<input type="checkbox" class="form-check-input" id="agree" name="agree" />					  
					</div><br>
					
					<div role="group" aria-label="Basic example">
						<button type="submit" class="btn btn-primary">위 내용이 맞습니다</button>
						<button type="reset" class="btn btn-secondary">취소</button>
					</div>
						
					</div>
				</div>
				<br>
            	
            	
	
						
			
				</div><!-- col-lg-7 -->
            </div><!-- row justify-content-center -->
        </div><!-- .container -->
    </div><!-- .container-xxl py-5 wow fadeInUp -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
</body>

</html>