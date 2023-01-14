<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>fsitterMyProfile</title>
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
    
    <link rel="stylesheet" href="/css/member/fsitter/fsitterMyProfile.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/member/fsitter/fsitterMyPet.css">
	<link rel="stylesheet" href="/css/main.css">
    
  	<style type="text/css">
  		.serveType {
  			width:65px; border:1px solid  white; 
  			background-color:#ffd7b3; border-radius:5px;padding:5px; 
  			vertical-align: center; cursor: pointer;
  		}
 		.serveType:hover {
			box-shadow: 0 0 2px gray;		
 		} 
 		.starImg{
	width: 25px;
	height: 25px;
	object-fit: cover;
	margin:0px;
}
 		
 		.select {
    padding: 15px 10px;
}
.select input[type=radio]{
    display: none;
}
.select input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 90px;
    border: 1px solid #ffd7b3;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
    border-radius: 5px;
    box-shadow: 0 10px 35px rgba(0, 0, 0, 0.05), 0 6px 6px rgba(0, 0, 0, 0.1);
}
.select input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.select input[type=radio]:checked+label{
    background-color: #ffd7b3;
    color: #333;
}	
  		.
  	
  	</style>
   

<script type="text/javascript">
$(document).ready(function () {
	$.datepicker.setDefaults($.datepicker.regional['ko']); 
    $( "#startDate" ).datepicker({
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달', 
         dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dateFormat: "yy/mm/dd",
         minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
         onClose: function( selectedDate ) {    
              //시작일(startDate) datepicker가 닫힐때
              //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
             $("#endDate").datepicker( "option", "minDate", selectedDate );
         }    

    });
    $( "#endDate" ).datepicker({
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달', 
         dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dateFormat: "yy/mm/dd",
         minDate:0,
         maxDate: 90,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
         onClose: function( selectedDate ) {    
             // 종료일(endDate) datepicker가 닫힐때
             // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
             $("#startDate").datepicker( "option", "maxDate", selectedDate );
         }    

    });   
      
   

$(function() { // 파일 업로드
    $('#img_select1').change(function() {
       setImageFromFile(this, '#preview1');
    });
    $('#img_select2').change(function() {
       setImageFromFile(this, '#preview2');
    });
    $('#img_select3').change(function() {
       setImageFromFile(this, '#preview3');
    });
 });
 //파일 업로드
 function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function(e) {
          $(expression).attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
 }
});
</script>
 
   
    
<!-- 카카오 맵 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=267276c330ec0b1c55c55bf8f203426d"></script>

<script type="text/javascript">

	function initialize()
	{
		
		//alert("함수 호출 확인");
		container = document.getElementById("map");					
		options =
		{
			center: new kakao.maps.LatLng(${sitter.lat}, ${sitter.lng}),	
			level: 7,
		};
		
		map = new kakao.maps.Map(container, options);
		map.setMinLevel(2);
		 circle = new kakao.maps.Circle({
		    center : new kakao.maps.LatLng(${sitter.lat}, ${sitter.lng}),  // 원의 중심좌표 입니다 
		    radius: 1300, // 미터 단위의 원의 반지름입니다 
		    strokeWeight: 2, // 선의 두께입니다 
		    strokeColor: '#75B8FA', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'line', // 선의 스타일 입니다
		    fillColor: '#CFE7FF', // 채우기 색깔입니다
		    fillOpacity: 0.7  // 채우기 불투명도 입니다   
		}); 
		 
		 
		// 지도에 원을 표시합니다 
		 circle.setMap(map); 

	}
</script>
    



</head>

<body onload="initialize()">
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
                    <!-- <div class="IMG1" >
						<img src="/images/fsitter/2.svg" class="svgImg2">
						<span class="font h_font">수정하기</span>
			       	</div>
       				 -->
						<div class="box_miMyPr1">
									<img src="${sitter.profileImg }" class="svgImg3" id="preview1">
									 	<div class="row"> 
										     <div class="" style="margin-left: -10px;">
										     	<span class="m_font">${sitter.addr }</span><br>
										      	<span class="m_font">펫시터</span>
										      	&nbsp;<span class="m_font ">${sitter.name }</span><span class="m_font">님</span>
										      	<div style="padding-top:20px;">
										      		<span style="font-size: 25px;">${sitter.title }</span>
										      	</div>
										      	
										      	<br>
										     </div>
										</div><!-- <div class="lg-3 row"> -->
										
						</div><!--end <div class="box_mi">-->
					
						<div class="box_miMyPr2">
							<div class="">
						      	<span class="mb_font">${sitter.name }</span>
						      	<span class="m_font">펫시터 님을 소개합니다.</span>
							</div>
							<br>
							<div>
								<div class="shadow-sm" style ="background-color: white; padding:20px;" >
									<p>${sitter.content }</p>
								
								</div>
							</div>
						</div><!-- <div class="box_miMyPr2 "> -->
		                <br>
		                <div class="box_miMyPr5 inline">
		                	<div class="petreview" style="display:flex;flex-direction: row;">
		                		<h2 class="petreviewTitle">펫시터 후기 ${sitter.reviewCnt }개</h2>
											<div
												style="width: 140px; display: flex; flex-direction: row; justify-content: space-between;">
												<div class="starImg"
													style="display: flex; flex: 1 1 0%; justify-content: space-between;">
													<c:forEach var="n" begin="1" end="${sitter.stars}" step="1">
														<img src="/images/member/pngwing.com.png"> 
													</c:forEach>
												</div>
											</div>
		                	</div>
		                	
		                	
		                	<!-- 후기 사진 부분 -->
		                	
		                	
		                	<div class="line" style="max-height: 1200px; overflow-y:scroll;">
		                	
		                	<!-- 사용자 후기 -->
		                	<c:forEach var="review" items="${reviews}">
		                	<div class="reviewForm">
		                		<div class="reviewFormTitle">
		                			<img width="50" height="50" src="${review.profile }" style="object-fit: cover; border-radius: 50%;">
		                				<div class="reviewImgIdDate">
		                					<p class="reviewId">${review.name }</p>
		                					<p class="reviewDate">${review.revDate }</p>
		                				</div>
		                		</div>
		                		<p class="petHostReview" >${review.content }</p>
								<!-- 이미지 -->
								<div class="petImgs">
									<img class="petImg" src="${review.img1 }" onerror="this.style.display='none'" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img class="petImg" src="${review.img2 }" onerror="this.style.display='none'" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img class="petImg" src="${review.img3 }" onerror="this.style.display='none'" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
								</div>
							</div>
							</c:forEach>
							<!-- 아직 정리 안됨 -->
							<!-- <div style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
								<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">펫시터 후기 더보기</p>
							</div> -->
							</div>
		                	
		                	
		                </div><!-- <div class="box_miMyPr5 inline"> -->
		                
					</div>
					
					
					
					
					
					
					<!-- 오른쪽 바 -->
					<div class="col-lg-4 row" style="margin-left: 10px; margin-top: 0px;">
				        <div class ="box_mypi2 inline" style="height: auto;">
				            <span>언제 펫시터가 필요한가요?</span>
					           <form class=" lg-3 row inline"> 
					            	<div class="form-group col-lg-5">  
								 		<input type="text"  id="startDate" class="form-control">
								 	</div> 
								 		<label for="datepicker" class="col-lg-2 col-form-label">-></label>
								 	<div class="form-group col-lg-5">  
								 		<input type="text"  id="endDate" class="form-control" style="margin-left: -20px;">
								 	</div>	

							       
							          
				            <br>
				            <div class="row">
				           		 <span class="col-auto">체크인 시간 </span> <span class="col-auto" style="margin-left: 120px;">체크아웃 시간</span>
				            </div>
					            	<div class="form-group col-lg-5">  
								 		<!-- <input type="text"  id="checkIn" class="form-control"> -->
								 			<select class="form-control" name="checkIn" style="text-align: center;">
								            	<option value="0" selected>시간 선택</option>
								            	<option value="1">09:00 </option>
								            	<option value="2">10:00 </option>
								            	<option value="3">11:00 </option>
								            	<option value="4">12:00 </option>
								            	<option value="5">13:00 </option>
								            	<option value="6">14:00 </option>
								            	<option value="7">15:00 </option>
								            	<option value="8">16:00 </option>
								            	<option value="9">17:00 </option>
								            	<option value="10">18:00 </option>
								            	<option value="11">19:00 </option>
								            	<option value="12">20:00 </option>
								            	<option value="13">21:00 </option>
								            </select>
								 	</div> 
								 		<label for="datepicker" class="col-lg-2 col-form-label">~</label>
								 	<div class="form-group col-lg-5">  
								 		<!-- <input type="text"  id="checkOut" class="form-control" style="margin-left: -20px;"> -->
								 			<select class="form-control" name="checkOut" style="margin-left: -20px; text-align: center">
								            	<option value="0" selected>시간 선택</option>
								            	<option value="1">09:00 </option>
								            	<option value="2">10:00 </option>
								            	<option value="3">11:00 </option>
								            	<option value="4">12:00 </option>
								            	<option value="5">13:00 </option>
								            	<option value="6">14:00 </option>
								            	<option value="7">15:00 </option>
								            	<option value="8">16:00 </option>
								            	<option value="9">17:00 </option>
								            	<option value="10">18:00 </option>
								            	<option value="11">19:00 </option>
								            	<option value="12">20:00 </option>
								            	<option value="13">21:00 </option>
								            </select>
								 	</div><!-- <div class="form-group col-lg-5">  -->
				            <br><br>
				            	<div class="form-group"style="margin-top:30px;">
				            		서비스 구분 선택
				            	 	<div style="display: flex; justify-content:space-around;  flex-direction: row;margin:auto;">
									     	<!-- <div class="serveType shadow-sm" style="">
									     		<span style="font-size: 15px;font-weight: bold;">타임케어</span>
									     	</div>
									     	<div class="serveType shadow-sm" style="">
									     		<span style="font-size: 15px;font-weight: bold;">데이케어</span>
									     	</div> -->
									     	<div class="select">
											     <input type="radio" id="select" name="shop"><label for="select">타임케어</label>
											     <input type="radio" id="select2" name="shop"><label for="select2">데이케어</label>
											</div>
									 </div>
							  </div><br><br>
				            	<span>맡기시는 반려동물</span>
					            <select class="form-control" multiple="multiple" style="text-align: center;" required="required">
					            	<option value="" selected>반려동물 선택</option>
					            	<option value="1">바둑이 </option>
					            	<option value="2">똘이 </option>
					            </select>
					            <br><br>
			        			
			        			<div class="col text-center">
				                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white; margin-top:30px;"
				                    onclick="location.href='http://localhost:8092/fsitter/fsitterMyProfileUpdate'">예약요청</button><!-- 주소는 추후 수정예정 -->
				                </div>
				                </form>
			        		</div>
			        		
			        		<div class="box_mypi2" style="height: 120px; ">돌봄가능 펫 크기<br>
			        					<div style="display: flex; justify-content:space-around;  flex-direction: row; width:250px;margin:auto;">
			        							<div class="shadow-sm" style="width:70px; border:1px solid  white; background-color:#ffd7b3; border-radius:5px;padding:5px;text-align:center;">
									     		<span style="font-size: 12px;font-weight: bold; ">소형<br>(7kg 미만)</span>
			        					  		</div>
									     	<c:choose>
									     		<c:when test="${sitter.petSizeId eq '2' }">
							     				<div class="shadow-sm" style="width:70px; border:1px solid  white; background-color:#ffd7b3; border-radius:5px;padding:5px;text-align:center">
							     				<span style="font-size: 12px;font-weight: bold;">중형<br>(7~15kg)</span>
							     				</div>
									     		</c:when>
									     		
									     		<c:when test="${sitter.petSizeId eq '3'}">
							     				<div class="shadow-sm" style="width:70px; border:1px solid  white; background-color:#ffd7b3; border-radius:5px;padding:5px;text-align:center">
							     				<span style="font-size: 12px;font-weight: bold;">중형<br>(7~15kg)</span>
							     				</div>
							     				<div class="shadow-sm" style="width:70px; border:1px solid  white; background-color:#ffd7b3; border-radius:5px;padding:5px;text-align:center">
									     		<span style="font-size: 12px;font-weight: bold;">대형<br>(15kg이상)</span>
									     		</div>
									     		</c:when>
									     	</c:choose>
									    </div>
			        		</div>
			        		<div class="box_mypi2" style="height: 460px;">예약 가능 날짜
			        		<br><br>
						 	<div id="test">
								<%-- <c:import url="http://localhost:8093/fsitter/fsitterCal"></c:import> --%>
							</div>
			        		</div>
			        		
			        		
			        		
			        		<div class="box_mypi2">
			        		<span>펫시터님 위치</span><br><br>
			        		<!-- <span>서초구 반포동 신반포역에서 도보로 10분</span> -->
			        		<div id="map" style="width: 325px; height: 270px;"></div>
			        		</div>
			        		
			        		<!-- 펫시터 프로필출력할때 사용할 부분 -->
			        		<div class="box_mypi4"style="height: 500px;">
			        		<table class="table">
								<thead>
									<tr>
								    	<th width="20%;" scope="col">요금표</th>
								    	<th scope="col">기본 요금(15,000)</th>
								    	<th scope="col">시간당(2,000)</th>
								    	<th scope="col">일(50,000)</th>
								  	</tr>
								</thead>
								<tbody>
									<tr>
									    <th scope="row">소형견</th>
									    <td></td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
									    <th scope="row">중형견</th>
									    <td>+10,000</td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
									    <th scope="row">대형견</th>
									    <td>+20,000</td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
								  	</tr>
								  	<tr>
								  		<th scope="row" >등급별</th>
								  		<td></td>
								  		<td></td>
								  		<td></td>
								  	</tr>	
								  	
								  	<tr>
								  		<th scope="row">새싹</th>
								  		<td> -5,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">브론즈</th>
								  		<td></td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">실버</th>
								  		<td >+5,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">골드</th>
								  		<td >+10,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	
								  	<tr>
								  		<th scope="row">마리당</th>
								  		<td>-10,000</td>
								  		<td></td>
								  		<td>-10,000</td>
								  	</tr>
								  	<tr>
								  		<th scope="row" >긴급</th>
								  		<td >+20,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								</tbody>
							</table>
			        		
			        		</div>
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

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>