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

    <!-- 여기다가 코드 작성 -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
       
				<div class="row">
				<div class="row justify-content-center">
            		<div class="col-lg-2 wow fadeInUp " data-wow-delay="0.2s">
						<c:import url="http://localhost:8092/member/memberSide"></c:import>
					</div>
				<!-- 진행 중인 펫시팅 -->
				<div class="col-lg-7">
					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">진행 중인 펫시팅</span>
					</div>
					<div class="box_mi">
						<span class="label label-default s_font font_black"
							style="background-color: rgb(225, 199, 199);">긴급-방문서비스</span>
						<img src="/images/member/timer-icon.svg" class="svgImg1">
						<span id="remainTime" class="s_font"></span>
						<div class="serv_on">
							<table class="table tab s_font">
								<tr>
									<th>신청번호</th>
									<th style="text-align: center;">내용</th>
									<th>의뢰자</th>
									<th>결제금액</th>
								</tr>
								<tr>
									<td><span class="reserveInfo">2333323</span></td>
									<td>
										<ul>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td><div class="reservInfoTd">
											<img src="/images/member/profile.svg" style="width: 60px;"><br>
											<span class="mb_font">루카스</span>
										</div>
									</td>
									<td><span class="reserveInfo">350030원</span></td>
								</tr>
							</table>
	
							<div>
								<button type="button" class="btn btn-danger">펫시터 노쇼</button>
								<button type="button" class="btn"
									style="background-color: #FE5C17; color: white;">일지 보기</button>
							</div>
			
						</div>
					</div>
					
					<br>
					
					
					<!-- 긴급 서비스 확정 대기 -->
					
					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">긴급 서비스 수락 대기</span>
					</div>
					<div class="box_mi">
						<span class="label label-default s_font font_black"
							style="background-color: rgb(225, 199, 199);">긴급 서비스</span>
						<span id="remainTime" class="s_font"></span>
						<div class="serv_on">
							<table class="table tab s_font">
								<tr>
									<th>신청번호</th>
									<th style="text-align: center;">내용</th>
									<th>긴급 요청 서비스 신청자 수</th>
								</tr>
								<tr>
									<td><span class="reserveInfo">2333323</span></td>
									<td>
										<ul>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td>
										<span id="sitterSu"> 3 </span> 명
									</td>
								</tr>
							</table>
							<div class="">
									<button type="button" class="btn"
									style="background-color: #FE5C17; color: white;">수락하러 가기</button>
							
							</div>
	
							
						</div>
					</div>
					
					
					
					<!-- 긴급 서비스 확정 대기 -->
					
					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">긴급 서비스 확정 대기</span>
					</div>
					<div class="box_mi">
						<span class="label label-default s_font font_black"
							style="background-color: rgb(225, 199, 199);">긴급 서비스</span>
						<span id="remainTime" class="s_font"></span>
						<div class="serv_on">
							<table class="table tab s_font">
								<tr>
									<th>신청번호</th>
									<th style="text-align: center;">내용</th>
									<th>의뢰자</th>
									<th>취소여부</th>
								</tr>
								<tr>
									<td><span class="reserveInfo">2333323</span></td>
									<td>
										<ul>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td><div class="reservInfoTd">
											<img src="/images/member/profile.svg" style="width: 60px;"><br>
											<span class="mb_font">루카스</span>
										</div>
									</td>
									<td><button type="button" class="btn btn-danger">확정하기</button></td>
								</tr>
							</table>
	
							
						</div>
					</div>
					
					
					<!-- 진행 예정인 펫시팅 -->
					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">진행 예정인 펫시팅</span>
					</div>
					<div class="box_mi">
	
						<div class="serv_on">
							<table class="table tab m_font">
								<tr>
									<th>신청번호</th>
									<th style="text-align: center">내용</th>
									<th>의뢰자</th>
									<th>결제금액</th>
								</tr>
								<tr>
									<td><span class="reserveInfo">23333</span></td>
									<td>
										<ul>
											<li><span class="label label-default s_font font_black"
												style="background-color: rgb(225, 199, 199);">긴급-위탁서비스</span></li>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td><div class="reservInfoTd">
											<img src="/images/member/profile.svg" style="width: 60px;"><br>
											<span class="mb_font">루카스</span>
										</div>
									</td>
									<td><span class="reserveInfo">35000원</span></td>
								</tr>
								<tr>
									<td><span class="reserveInfo">2333323</span></td>
									<td>
	
										<ul>
											<li><span class="label label-default s_font font_black"
												style="background-color: rgb(225, 199, 199);">긴급-방문서비스</span></li>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td><div class="reservInfoTd">
											<img src="/images/member/profile.svg" style="width: 60px;"><br>
											<span class="mb_font">루카스</span>
										</div></td>
									<td><span class="reserveInfo">35000원</span></td>
								</tr>
								<tr>
									<td><span class="reserveInfo">23333232</span></td>
									<td>
	
										<ul>
											<li><span class="label label-default s_font font_black"
												style="background-color: rgb(225, 199, 199);">방문서비스</span></li>
											<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
											<li>시작일자: 2022-12-12 10:00</li>
											<li>종료일자: 2022-12-12 13:00</li>
										</ul>
									</td>
									<td>
										<div class="reservInfoTd">
											<img src="/images/member/profile.svg" style="width: 60px;"><br>
											<span class="mb_font">루카스아앙이라라</span>
										</div>
									</td>
									<td><span class="reserveInfo">353,000원</span></td>
								</tr>
							</table>
	
						</div>
	
	
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

