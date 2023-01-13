<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>memberMyPet</title>
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
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    
    
	<link rel="stylesheet" href="/css/member/fsitter/fsitterMyPet.css">
	<link rel="stylesheet" href="/css/main.css">
	
	<!-- Sweet Alert 플러그인 추가해주기  -->
    <!-- <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<link
         href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
         rel="stylesheet"
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
         crossorigin="anonymous"
      /> -->
      
      <script type="text/javascript">

      $(function(){
          
          $(".confirmStart").click(function(){
             let id = $(this).val();
             
          
          if(confirm("선택한 데이터를 정말 삭제 하시겠습니까?"))
          {
             $(location).attr("href","memberMyPetDelete?id="+$(this).val() );
          }


       });

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
                <div class="col-lg-7">
                
                
                    <div class="IMG1" >
					<img src="/images/member/2.svg" class="svgImg2">
					<span class="font h_font">내 펫 관리</span>
		       		</div>
		       	
		        	
		        	<div class="box_miInfo">
  					<div class="col text-center">
			        	<button type="button" class="but btn" id="addpet" style="background-color: #FE5C17; color: white;"
			        	onclick="location.href='http://localhost:8092/member/memberMyPetInsert'">추가하기</button>
			        </div>
			        <br>
			        
			        
			        <div class="row">
			        
			        	<c:forEach var="pet" items="${list}">
				       
				        <div class="col-lg-4">
				        	<div class="card" style="margin-bottom: 20px;">
				            	<img src="/images/member/p.svg" id="petsvg1" class="card-img-top" height="130px" width="130px"  >
				            <div class="card-body">
				            	
				              	<h5 class="card-title" style="text-align: center;">${pet.name}</h5>
				              		<ul class="list-group list-group-flush">
										<li class="list-group-item" style="text-align: center;">${pet.weight} / ${pet.gender} / ${pet.birthday}살</li>
									</ul>
								
				              	<div class="col text-center">
				                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;"
				                    onclick="location.href='PetUpdate?id=${pet.id }'">수정하기</button>
									<button type="button" class="btn btn-secondary confirmStart m-2" 
									value="${pet.id }">삭제하기</button>
				                </div> 
				            </div><!-- <div class="card-body"> -->
				          	</div>
				       	</div><!-- <div class="col-lg-4"> -->
						
						</c:forEach>
		        	
				       	
				       	
					</div><!-- <div class="row"> -->
					
					</div><!-- <div class="box_miInfo"> -->
						

                </div>
            </div>
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>