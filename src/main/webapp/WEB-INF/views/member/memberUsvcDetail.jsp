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
    

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    

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
	$(function(){
		CountDownTimer('01/07/2023 16:25:00', 'remainTime');
	});

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
            
            
	<div class="container">
		<div class="row">
			<div class="col-lg-2" id="info">
				<c:import url="/member/mainPage/memberSide"></c:import>
			</div>
			<div class="col-lg-7">
				<div class="IMG1">
					<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
						class="font h_font">긴급 요청 서비스 등록</span>
				</div>
				<div class="box_mi_t">
					<span class="label label-default  font_black"
						style="background-color: rgb(225, 199, 199);">긴급-방문서비스</span>
					<img src="/images/member/timer-icon.svg" class="svgImg1">
					<span id="remainTime" class="s_font"></span>
					<div class="serv_on">
						<table class="table tab s_font">
						
							<tr>
								<td class="l_font" style="text-align: center;">주소</td>
							</tr>
							<tr>
								<td><p class="l_font">aip 쓴거 땡겨옴</p></td>
								
							</tr>
						
							
						
						
							<tr>
								<td class="l_font " style="text-align: center;">긴급 요청 서비스 일정</td>
							</tr>
							<tr>
								<td><p class="l_font">달력</p></td>
								
							</tr>
							
							
							<tr>
								<td class="l_font " style="text-align: center;">제목</td>
							</tr>
							<tr>
								<td><p class="l_font">우리 댕댕이 급하게 봐주실분 구합니다!</p></td>
								
							</tr>
							
							<tr>
								<td class="l_font" style="text-align: center;">요청사항</td>
							</tr>
							<tr>
								<td><p class="l_font">콩이가 지금 체중 조절 중이라 12시 17시 이렇게 나눠서 밥 주시면 감사하겠습니다.  그릇의 3분의 1만큼만 채워주시면 됩니다.
장난감은 깃털 달린 걸 가장 좋아하니깐 한번에 20분 정도 놀아 주시면 감사해요 하루에 3번정도 놀아 주시면 될것 같아요~
깡이는 산책 한시간 정도 해주시면 됩니다</p></td>
								
							</tr>
							
							<tr>
								<td class="l_font" style="text-align: center;">결제금액</td>
							</tr>
							<tr>
								<td><p class="l_font">333,323원</p></td>
							</tr>
						</table>

						
					</div>
				</div>
				<br>
				
				<div class="text-center">
						<button type="submit" class="btn">확인</button>
				</div>
				

			</div>
			<div class="col-lg-3">
				<div id="test">
					<c:import url="/member/memberCal"></c:import>
				</div>
			</div>
            
            
            
            </div>
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

	    	</div>
    </div>
    

    <!-- JavaScript Libraries -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>
    

    
</body>

</html>