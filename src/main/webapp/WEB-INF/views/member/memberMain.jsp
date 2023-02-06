<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
// 	String title = "스크립틀릿 제목입니다.";
// 	pageContext.setAttribute("title", title);
 %>
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

	 <!-- JavaScript Libraries -->

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

        var text = '남은시간: '+days+'일 '+ hours + '시간 '+minutes + '분 '+ seconds + '초';
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

				<div class="row">
				<div class="row justify-content-center">
            		<div class="col-lg-2 wow fadeInUp " data-wow-delay="0.2s">
						<c:import url="/member/memberSide"></c:import>
					</div>
				<!-- 진행 중인 펫시팅 -->
				<div class="col-lg-7">
					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">진행 중인 펫시팅</span>
					</div>
					<div class="box_mi">
								<c:if test="${empty currentPetsitting}">
									<br>
									<span class="mb_font">현재 진행 중인 펫시팅 서비스가없습니다.</span>
								</c:if>
								<c:if test="${!empty currentPetsitting}">
								<table class="table tab s_font">
									<tr>
										<th>신청번호</th>
										<th>내용</th>
										<th>펫시터</th>
										<th>결제금액</th>
									</tr>
								<c:forEach var="member" items="${currentPetsitting}" varStatus="status">
								<tr>
								<td colspan="2" style="border: 0px; ">
								<span class="label label-default s_font font_black"
									  style="background-color: rgb(225, 199, 199);">
									<c:if test="${member.serviceType == '1'}">
										방문서비스
									</c:if>
									<c:if test="${member.serviceType == '2'}">
										위탁서비스
									</c:if>
									<c:if test="${member.serviceType == '3'}">
										긴급-위탁서비스
									</c:if>
									<c:if test="${member.serviceType == '4'}">
										긴급-방문서비스
									</c:if>
								</span>
								<img src="/images/member/timer-icon.svg" class="svgImg1" style="margin-left: 10px;">
								<span id="remainTime${status.index}" class="m_font" style="font-weight: bold;background-color: white;color: #ff9433; border-radius: 5px;"></span>

								</td>
								</tr>



								<tr>
									<td>${member.serviceId }</td>
									<td style="border: 0px;">
										<ul style="text-align:left;">
											<li>주소 : <span> ${member.addr }</span></li>
											<li>시작일자: <span> ${member.startDate }</span></li>
											<li>종료일자: <span id="aa${status.index}"> ${member.endDate }</span></li>
										</ul>
									</td>
									<td>
										<div class="reservInfoTd">
											<img src="${member.petsitterProfile }" style="width: 60px; height:60px; object-fit:cover; border-radius: 30px;"><br>
											<span class="mb_font">${member.petsitterNickname }</span>
										</div>
									</td>
									<td>
										<fmt:formatNumber value="${member.totalPrice }"/> 원
									</td>
									<script>
										$(function(){
											CountDownTimer(dateGetter($("#aa${status.index}").text()), 'remainTime${status.index}');

										});
										// 0/ 0/ 20  1:00:00
									</script>

								</tr>

								<tr aria-rowspan="2">
									<td colspan="2">
										<div>
											<button type="button" class="btn btn-sm btn-danger"
											onclick="location.href='/member/serviceNoshow?serviceType=${member.serviceType}&serviceNo=${member.serviceId}'">펫시터 노쇼</button>
											<button type="button" class="btn btn-sm"
													style="background-color: #FE5C17; color: white;">일지 보기</button>

										</div>
									</td>
								</tr>
								</c:forEach>

								</table>
								</c:if>
						</div>


					<br>



					<!-- 서비스 이용 확정 대기 -->

					<div class="IMG1">
						<img src="/images/member/sitting_on.svg" class="svgImg1"> <span
							class="font h_font">서비스 이용 확정 대기</span>
					</div>
					<div class="box_mi">
						<div class="serv_on">

								<c:if test="${empty comfirmWaiting}">
									<br>
									<span class="mb_font">현재 서비스 이용 확정 대기가 없습니다.</span>
								</c:if>

								<c:if test="${!empty comfirmWaiting}">
									<table class="table tab m_font">

									<tr>
										<th>신청번호</th>
										<th style="text-align: center;">내용</th>
										<th>펫시터</th>
										<th>확정여부/후기쓰기</th>
									</tr>
								<c:forEach var="member" items="${comfirmWaiting}">
									<tr>
										<td style="width: 80px;"><span class="label label-default s_font font_black"
												  style="background-color: rgb(225, 199, 199);">
										<c:if test="${member.serviceType == '1'}">
											방문서비스
										</c:if>
										<c:if test="${member.serviceType == '2'}">
											위탁서비스
										</c:if>
										<c:if test="${member.serviceType == '3'}">
											긴급-위탁서비스
										</c:if>
										<c:if test="${member.serviceType == '4'}">
											긴급-방문서비스
										</c:if>
										</span><br>
											<span class="reserveInfo"> ${member.serviceId }</span></td>
										<td>
											<ul style="text-align: left;">
												<li>주소 : <span> ${member.addr }</span></li>
												<li>시작일자: <span> ${member.startDate }</span></li>
												<li>종료일자: <span> ${member.endDate }</span></li>
											</ul>
										</td>
										<td><div class="reservInfoTd">
												<img src="${member.petsitterProfile }" style="width: 60px; height:60px; object-fit:cover; border-radius: 30px;"><br>
												<span class="mb_font">${member.petsitterNickname }</span>
											</div>
										</td>
										<td>
											<div class="btn">
												<a href="/member/serviceConfirm?serviceType=${member.serviceType}&resId=${member.resId}" class="btn btn-sm btn-primary" role="button">확정하기</a>
												<br><br>
												<button type="button" class="btn btn-sm btn-success"
														onclick="location.href = '/member/memberReviewForm?serviceType=${member.serviceType}&resId=${member.resId}'">후기쓰기</button>
											</div>
										</td>
									</tr>
									</c:forEach>
										</c:if>

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

							<c:if test="${empty petsittingSchedule}">
								<br>
								<span class="mb_font">현재 진행 예정인 펫시팅이 없습니다.</span>
							</c:if>
							<c:if test="${!empty petsittingSchedule}">
									<table class="table align-middle text-center m_font">
								<tr>
									<th>신청번호</th>
									<th style="text-align: center">내용</th>
									<th>펫시터</th>
									<th>취소여부</th>
								</tr>
								<c:forEach var="member" items="${petsittingSchedule }">


								<tr>
									<td><span class="reserveInfo">${member.serviceId }</span></td>
									<td style="width:350px;">
										<ul style="text-align: left">
											<li><span class="label label-default s_font font_black"
												style="background-color: rgb(225, 199, 199);">
												<c:if test="${member.serviceType == '1'}">
												방문서비스
											</c:if>
											<c:if test="${member.serviceType == '2'}">
												위탁서비스
											</c:if>
											<c:if test="${member.serviceType == '3'}">
												긴급-위탁서비스
											</c:if>
											<c:if test="${member.serviceType == '4'}">
											긴급-방문서비스
											</c:if>
											</span>
											</li>
											<li>주소 : ${member.addr }</li>
											<li>시작일자: ${member.startDate }</li>
											<li>종료일자: ${member.endDate }</li>
										</ul>
									</td>
									<td><div class="reservInfoTd">
											<img src="${member.petsitterProfile }" style="width: 60px;height:60px; border-radius:30px; object-fit: cover;"><br>
											<span class="mb_font">${member.petsitterNickname }</span>
										</div>
									</td>
									<td><button type="button" class="btn btn-sm btn-danger" onclick="location.href='/member/serviceCancel?serviceType=1&serviceNo=${member.serviceId}'">취소하기</button></td>
								</tr>
								</c:forEach>

							</table>
							</c:if>
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
	</div>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

</body>



</html>

