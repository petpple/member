<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>긴급 요청 서비스-현재 의뢰중</title>
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
    <link href="/css/member/sitter/sitterInfo.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Template Javascript -->
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

				var text = days+'일 '+ hours + '시간 '+minutes + '분 '+ seconds + '초';
				document.getElementById(id).innerHTML = text;
			}
			timer = setInterval(showRemaining, 1000);
		}

		function dateGetter(endDate){
			const endTime = endDate.trim();
			const endyear = endTime.substring(0,4);
			const endmonth = endTime.substring(6,8);
			const endday = endTime.substring(10,12);
			const endtime = endTime.substring(14,16);

			return endmonth+'/'+endday+'/'+endyear+' '+endtime+':00:00';
		}
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
            	<div class="col-lg-2 wow fadeInUp" data-wow-delay="0.2s" id="info">
					<c:import url="/member/memberSide"></c:import>
            	</div>
            		
            	<div class="col-lg-7" id="">
            		<div class="box_mi"> 
            			<span class="h2_font">긴급 요청 서비스 - 현재 의뢰중</span>
            			<div class="box_white">
            				<table class="table tab_Info m_font table-borderless">
								<tr>
									<th>서비스 구분</th>
									<th>요청 번호</th>
									<th>내용</th>
									<th>상세보기 / 취소</th>
								</tr>
								<c:forEach var="svc" items="${list}" varStatus="status">

            					<tr>
            						<td><span class="badge font_black"
											  style="background-color: rgb(225, 199, 199);">
											<c:if test="${svc.serviceType == '3'}">
												긴급-위탁
											</c:if>
											<c:if test="${svc.serviceType == '4'}">
												긴급-방문
											</c:if>
											</span>
									</td>
            						<td>
										${svc.serviceId}
            						</td>
            						<td style="text-align:left; padding-left:30px;">
										<c:if test="${svc.serviceType =='3'}">
											<span class="m_font">주소 : </span><span class="m_font">${svc.addr}</span><br>
										</c:if>
            							<span class="m_font">금액 : </span><span class="m_font">${svc.totalPrice}원</span><br>
            							<span class="m_font">시작일시 : </span><span class="m_font" id="remain${status.index}">${svc.startDate}</span><br>
            							<span class="m_font">종료일시 : </span><span class="m_font" >${svc.endDate}</span><br>
										<span ></span>
									</td>
            						<td><button class="btn btn-sm show_button" style="margin-bottom:10px;"
            						onclick="location.href = '/member/memberUsvcDetail/'">상세</button><br>
            						</td>
            					</tr>
								<tr style="">
									<td colspan="4" >
									요청 만료까지 <span style="color: red" id="remainTime${status.index}"></span>남았습니다.
									<hr>
									<script>
										$(function(){
											CountDownTimer(dateGetter($("#remain${status.index}").text()), 'remainTime${status.index}');
										});
									</script>
									</td>
								</tr>
								</c:forEach>
            				</table>
            			</div>
            		</div>
            	</div>
            	
            	<div class="col-lg-3 wow fadeInUp" data-wow-delay="0.2s" id="">
            		<c:import url="/member/memberCal"></c:import>
            	</div>
            </div>
        </div>
    </div>
    <!-- 404 End -->

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