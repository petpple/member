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
            			<span class="h2_font">방문 서비스 - 펫시터 수락 대기중</span>
            			<div class="box_white">
            				<table class="table tab_Info m_font">
            					<tr>
            						<th>지원일시</th>
            						<th>펫시터</th>
            						<th>내용</th>
            						<th>상세보기</th>
            					</tr>
            					<c:forEach var="member" items="${list }">
           						<tr>
            						<td>${member.reqDate } </td>
            						<td>
            							<div class="petImg">
													<img src="${member.petsitterProfile }">
										</div>
										<span class="mb_font">${member.petsitterNickname }</span>
            						</td>
            						<td style="text-align:left; padding-left:30px;">
            							<span class="m_font">주소 : </span><span class="m_font">${member.addr }</span><br>
            							<span class="m_font">금액 : </span><span class="m_font">${member.totalPrice }원</span><br>
            							<span class="m_font">시작일시 : </span><span class="m_font">${member.startDate }</span><br>
            							<span class="m_font">종료일시 : </span><span class="m_font">${member.endDate }</span><br>
            						</td>
            						<td><a href=""><button class="btn btn-sm btn-light" style="margin-bottom:10px;color:white">상세</button></a><br>
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