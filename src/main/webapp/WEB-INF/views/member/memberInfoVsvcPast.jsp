<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>방문 서비스-지난 펫시팅 이력</title>
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
            			<span class="h2_font">방문 서비스 - 누적 펫시팅 이력</span>
            			<div class="box_white">
            				<table class="table tab_Info m_font">
            					<tr>
            						<th>펫시터</th>
            						<th>내용</th>
            						<th>서비스 상태</th> <!--취소,의뢰자노쇼,펫시터 노쇼,확정,확정 대기   -->
            						<th>상세보기</th>
            					</tr>
								<c:forEach var="member" items="${list}">
            					<tr>
            						<td>
            							<div class="petImg">
													<img src="${member.petsitterProfile}">
										</div>
										<span class="mb_font">${member.petsitterNickname}</span>
            						</td>
            						<td style="text-align:left; padding-left:30px;">
            							<span class="m_font">주소 : </span><span class="m_font">${member.addr}</span><br>
            							<span class="m_font">금액 : </span><span class="m_font">${member.totalPrice}원</span><br>
            							<span class="m_font">시작일시 : </span><span class="m_font">${member.startDate}</span><br>
            							<span class="m_font">종료일시 : </span><span class="m_font">${member.endDate}</span><br>
            						</td>
            						<td><span class="m_font">
										<c:if test="${member.pastType == '1'}">펫시터 거절</c:if>
										<c:if test="${member.pastType == '2'}">서비스 취소</c:if>
										<c:if test="${member.pastType == '3'}">후기 미작성</c:if>
										<c:if test="${member.pastType == '4'}">의뢰인 노쇼</c:if>
										<c:if test="${member.pastType == '5'}">펫시터 노쇼</c:if>
										<c:if test="${member.pastType == '6'}">서비스 확정</c:if>
									</span></td>
									<%--취소,펫시터노쇼, 위탁펫시터노쇼, 확정--%>
            						<td></div><a href=""><button class="btn btn-sm btn-info" style="margin-bottom:10px;">상세 보기</button></a><br>
										<c:if test="${member.pastType == '3'}">
											<a href="memberReviewForm?serviceType=1&resId=${member.resId}"><button class="btn btn-sm btn-outline-primary" style="margin-bottom:10px;">후기 작성</button></a>
										</c:if>
									</td>
            					</tr>
								</c:forEach>
            				</table>
            				<div style="text-align:center">
	            				<nav aria-label="Page navigation example"style=" display: inline-block;">
									<c:if test="${count>5 }">
										<ul class="pagination ">
										<c:if test="${page>1}">
											<li class="page-item"><a class="page-link" href="memberInfoVsvcPast?page=${page-1}" style="color:gray">Previous</a></li>
										</c:if>

										<c:if test="${count>page*5 }">
											<li class="page-item"><a class="page-link" href="memberInfoVsvcPast?page=${page+1}" style="color:gray">Next</a></li>
										</c:if>
										</ul>
									</c:if>
								</nav>
							</div>
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