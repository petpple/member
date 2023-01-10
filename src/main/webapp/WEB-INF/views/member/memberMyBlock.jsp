<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>차단 목록 페이지</title>
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

	<link rel="stylesheet" href="/css/member/fsitter/fsitterMyBlock.css">

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
            	<div class="col-md-7">
					<div class="IMG1" >
						<img src="/images/member/block.svg" class="svgImg2">
						<span class="font h_font">차단 목록</span>
		        	</div>
		        	
			        <div class="box_miBlock">
			            <div class= "serv_on">
			                <table class="table table-hover m_font" >
			                    <tr>
			                        <th>번호</th>
			                        <th>의뢰자 닉네임</th>
			                        <th>차단 사유</th>
			                        <th>차단한 날짜</th>
			                        <th>삭제</th>
			                    </tr>
			                 	<tr>
			                        
			                    </tr>
			                    <tr>
			                    	<td>1</td>
			                    	<td>진성준</td>
			                    	<td>그냥 짜증남</td>
			                    	<td>2022/09/18</td>
			                    	<td><button class="btn btn-default" type="submit">X</button></td>
			                    </tr>
			                    <tr>
			                    	<td>2</td>
			                    	<td>진도준</td>
			                    	<td>투기, 욕설</td>
			                    	<td>2022/10/18</td>
			                    	<td><button class="btn btn-default" type="submit">X</button></td>
			                    </tr>
			                    <tr>
			                    	<td>3</td>
			                    	<td>진양철</td>
			                    	<td>폭언, 욕설</td>
			                    	<td>2022/11/18</td>
			                    	<td><button class="btn btn-default" type="submit">X</button></td>
			                    </tr>
			                    </table>
			                    <table class="table" >
			  					<tr>
			  					<th></th>
			  					</tr>
			  					</table>
			                <div>
			                	<div class="col text-center">
			                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;">변경하기</button>
			                	</div>  
							</div>
						</div>
					</div>
				</div>
		            
            
            </div>
        </div>
    </div>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
</body>

</html>