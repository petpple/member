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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c915512875915ad91cd2c322fa7c851b&libraries=services"></script>
<!-- 카카오 맵 API -->
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/member/fsitter/fsitterMyPet.css">
	<link rel="stylesheet" href="/css/member/fsitter/vsitterSvc.css">
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
  .tab2 th {
        text-align: left;
    }

    .tab2 td {
        text-align: right;
    }

    .tab2 {
        border: 0px white !important;
        padding:100px;
        border-bottom: 0px white !important;
    }
    
    .pay{
    	width:300px;
        padding: 30px;
    }
  	
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
 
 
 $("#checkIn").change(function(){
	if($("#startDate").val()!='' && $("#endDate").val()!='' &&($("#startDate").val()==$("#endDate").val())
			&&( parseInt($("#checkIn").val()) >= parseInt($("#checkOut").val())))
	{
		$("#checkOut").val('0').prop('selected','selected');
		setBackTime();
		removeEndTime($("#checkIn").val());
	} 
	else if($("#startDate").val()!='' && $("#endDate").val()!='' &&($("#startDate").val()==$("#endDate").val())
			&&(parseInt($("#checkIn").val()) < parseInt($("#checkOut").val())))
	{	
		setBackTime();
		removeEndTime($("#checkIn").val());
		
	}
 });
 
 $("#checkOut").change(function(){
		if($("#startDate").val()!='' && $("#endDate").val()!='' &&($("#startDate").val()==$("#endDate").val())
				&&( parseInt($("#checkIn").val()) >= parseInt($("#checkOut").val())))
		{	
			$("#checkIn").val('0').prop('selected','selected');
			setBackTime();
			removeStartTime($("#checkOut").val());
			
		} 
		
		else if($("#startDate").val()!='' && $("#endDate").val()!='' &&($("#startDate").val()==$("#endDate").val())
				&&(parseInt($("#checkIn").val()) < parseInt($("#checkOut").val())))
		{	
			setBackTime();
			removeStartTime($("#checkOut").val());
			
		} 	 
	 });
 $("#startDate").change(function(){
	 setBackTime();
	 $("#checkIn").val('0')
	 $("#checkOut").val('0')
	 
 });
  $("#endDate").change(function(){
	 setBackTime();
	 $("#checkIn").val('0')
	 $("#checkOut").val('0')
	 
 });
  $("#popbutton").click(function(){
    			 var myModal = new bootstrap.Modal(document.getElementById('staticBackdrop'), {
    				  keyboard: false
    				})
    			 myModal.show();
    		    });
    		    
   $("#doRequest").click(function(){
	   if($("#startDate").val()==''){
		   alert("시작날짜를 입력하세요");
		   $("#startDate").focus();
		   return;
	   }
	   if($("#endDate").val()==''){
		   alert("종료날짜를 입력하세요");
		   $("#endDate").focus();
		   return;
	   }
	   if($("#checkIn").val()=='0'){
		   alert("시작시간을 입력하세요");
		   $("#checkIn").focus();
		   return;
	   }
	   if($("#checkOut").val()=='0'){
		   alert("종료시간을 입력하세요");
		   $("#checkOut").focus();
		   return;
	   }
	   if(!$('input[name=careType]:checked').val()){
		   alert("케어타입을 선택하세요");
		   $("#select2").focus();
		   return;
	   }
	   
	   if($("#petChoice").val()==''){
		   alert("펫을 선택하세요");
		   $("#petChoice").focus();
		   return;
	   }
	   if($("#code").val()==''){
		   alert("주소를 입력하세요.");
		   $("#code").focus();
		   return;
	   }
	   
	   let basicCost = 0;
	   let timeCost = 0;
	   let dayCost = 0;
	   let gradeCost = 0;
	   let petCost = 0;
	   let weightCost = 0;
	   let totalCost =0;
	   
	   let petCount = $("#petChoice").val().length;
	   
	   
	   
	   if($('input[name=careType]:checked').val()=='1')
	   {
		   let checkInTime = parseInt($("#checkIn").val());
		   let checkOutTime = parseInt($("#checkOut").val());
		   
		   if($("#startDate").val()==$("#endDate").val())
		   {
			   timeCost = (checkOutTime-checkInTime-1) *2000
		   }
		   else
		   {
			   let dateA = new Date($("#startDate").val()+" "+$("select[id='checkIn'] option:selected").text().trim()+":00");
			   let dateB = new Date($("#endDate").val()+" "+$("select[id='checkOut'] option:selected").text().trim()+":00");
			   const diffMSec = dateB.getTime() - dateA.getTime();
			   const diffHour = diffMSec / (60 * 60 * 1000);
			   timeCost = (diffHour-1) *2000
		   }
		   basicCost=15000
	   }
	   else if ($('input[name=careType]:checked').val()=='2')
	   {
		    let date1Arr = $("#startDate").val().split("/")
		    let date2Arr = $("#endDate").val().split("/")
		    const date1 = new Date(date1Arr[0], date1Arr[1], date1Arr[2]);
			const date2 = new Date(date2Arr[0], date2Arr[1], date2Arr[2]);

			const elapsedMSec = date2.getTime() - date1.getTime(); // 172800000
			const elapsedDay = elapsedMSec / 1000 / 60 / 60 / 24; // 2
			
			dayCost = (elapsedDay)*50000
			basicCost= 50000
	   }
		if(${sitter.grade}==1)
		{
			gradeCost = -5000;
		}
		else if(${sitter.grade}==2)
		{
			gradeCost = 0;
		}
		else if(${sitter.grade}==3)
		{
			gradeCost = 5000;
		}
		else if(${sitter.grade}==4)
		{
			gradeCost = 10000;
		}
	    
	   petCost = petCount * 5000;

	   let shaIdList = new Array();
	   let weightList = new Array();
	   let petList = $("#petChoice").val();
	   for (let i = 0; i < petCount; i++) {
		    
			let shaAndWei = petList[i].split("/");
			shaIdList.push(shaAndWei[0].trim());
			weightList.push(shaAndWei[1].trim());
	   }
	   for(let i = 0; i < weightList.length; i++) {
		   
			if(weightList[i]=='2') {
				weightCost+=10000
			}
			else if(weightList[i]=='3') {
				weightCost+=20000
			}
	   }
	   petCost= (petCount-1)*10000;
	   
	   $("#basicCost").text(changeToMoneyFormat(basicCost));
	   $("#timeCost").text(changeToMoneyFormat(timeCost));
	   $("#dayCost").text(changeToMoneyFormat(dayCost));
	   $("#petCost").text(changeToMoneyFormat(petCost));
	   $("#weightCost").text(changeToMoneyFormat(weightCost));
	   $("#gradeCost").text(changeToMoneyFormat(gradeCost));
	   totalCost= basicCost+timeCost +dayCost+petCost + weightCost+ gradeCost;
	   $("#totalCost").text(changeToMoneyFormat(totalCost));


	   var myModal = new bootstrap.Modal(document.getElementById('staticBackdrop'), {
		   keyboard: false
		 })
	   myModal.show();			
	   $("#payment").click(function(){
		  var regex = /[^0-9]/g;	

       	 $("#petShaIdArr").val(shaIdList);
       	 $("#pay").val($("#totalCost").text().replace(regex, ""))
       	 $("#refDepositor").val($("#tmpRefName").val())
       	 $("#refBank").val($("#bank").val())
       	 $("#refAccNum").val($("#tmpRefAccNum").val())
       	 $("#myform").submit();
	   });
   });
 
 
});
function removeEndTime(num)
{
	$("#checkOut").find("option").each(function(){
		if(parseInt(this.value) <= parseInt(num))
		{
			$(this).css("display","none");
		}
	});
	
}

function changeToMoneyFormat(money)
{


	const cash = money.toString()
  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

  return cash+'원';
}
function removeStartTime(num)
{
	$("#checkIn").find("option").each(function(){
		if(parseInt(this.value) >= parseInt(num))
		{
			$(this).css("display","none");
		}
	});
}


function setBackTime()
{
		$("#checkOut").find("option").each(function(){
				$(this).css("display","inline");
		});
		$("#checkIn").find("option").each(function(){
			$(this).css("display","inline");
		});
}
function DaumPostcode() {
	
    new daum.Postcode({
        oncomplete: function(data) {
        	
         	var code = data.zonecode; // 우편번호
            var addr = ''; // 기본주소
            var addrjibun = ''; //지번주소
            var extraAddr = ''; // 참고항목
            var geocoder = new kakao.maps.services.Geocoder();
            
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            
            if (data.userSelectedType === 'R') 
            { // 사용자가 도로명 주소를 선택했을 경우 - 지번주소 return 되지 않음
                addr = data.roadAddress;
            	
              // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                     extraAddr += '(' + data.bname + ') ';
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' || data.apartment === 'Y'){
                     extraAddr += '(' + data.buildingName + ')';
                 } 
            }
            else
            { // 사용자가 지번 주소를 선택했을 경우(J)
            	addr = data.jibunAddress;
            	addrjibun = data.roadAddress;
            }
            
            // 주소 정보를 해당 필드에 넣는다.
            document.getElementById('code').value = code;
            document.getElementById('addr').value = addr + ' ' + extraAddr;
            
            
            // 주소로 상세 정보를 검색
            geocoder.addressSearch(data.address, function(results, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === daum.maps.services.Status.OK) {

                    var result = results[0]; 
						
                    // 해당 주소에 대한 좌표를 받아서
                    var coords = new daum.maps.LatLng(result.y, result.x);                        
                   
                    document.getElementById('lat').value = coords.Ma;
                    document.getElementById('lng').value = coords.La;
                    
                }
            });
            
        }
    }).open();
}


</script>
 
   
    
<!-- 카카오 맵 -->


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
						<div class="box_miMyPr1" style="">
									<div style="vertical-align:middle;"> 
									<img src="${sitter.profileImg }" class="svgImg3" id="preview1" style="margin-top: 30px;margin-left:10px;  border-radius:9px">
									<div class="row gradeImg" style="vertical-align:middle;">
										      		<div class="col-auto" style="padding-bottom:15px;">
										      		<c:if test="${sitter.grade eq '1' }">
													<img src="/images/member/sprout.svg">
													</c:if>
													<c:if test="${sitter.grade eq '2' }">
														<img src="/images/member/bronze.svg">
													</c:if>
													<c:if test="${sitter.grade eq '3' }">
														<img src="/images/member/silver.svg">
													</c:if>
													<c:if test="${sitter.grade eq '4' }">
														<img src="/images/member/gold.svg">
													</c:if>
													</div>
													<p class="col-auto" style="margin-left:-10px;padding-top: 10px;">등급</p>
													
									</div>
									</div>
									 	<div class="row" style="margin-top:-15px;"> 
										     <div class="" style="margin-left: -10px;">
										     	<span class="m_font">${sitter.addr }</span><br>
										      	<span class="m_font">펫시터</span>
										      	&nbsp;<span class="m_font ">${sitter.name }</span><span class="m_font">님</span>
										      	
										      	<div style="padding-top:20px;">
										      		<span style="font-size: 25px;font-weight: 600">${sitter.title }</span>
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
								<input type="text" hidden="hidden">
							</div>
							</c:forEach>
							
							</div>
		                </div><!-- <div class="box_miMyPr5 inline"> -->
					</div>
					
					
					<!-- 오른쪽 바 -->
					<div class="col-lg-4 row" style="margin-left: 10px; margin-top: 0px;" >
				        <div class ="box_mypi2 inline" style="height: auto;">
				            <span>언제 펫시터가 필요한가요?</span>
					           <form class=" lg-3 row inline" action="/member/visitServiceRequest" id="myform"method="post"> 
					            	<div class="form-group col-lg-5">  
								 		<input type="text" name="startDate" id="startDate" class="form-control">
								 	</div> 
								 		<label for="datepicker" class="col-lg-2 col-form-label">-></label>
								 	<div class="form-group col-lg-5">  
								 		<input type="text"  name="endDate" id="endDate"class="form-control" style="margin-left: -20px;">
								 	</div>	
				            <br>
				            <div class="row">
				           		 <span class="col-auto">체크인 시간 </span> <span class="col-auto" style="margin-left: 120px;">체크아웃 시간</span>
				            </div>
					            	<div class="form-group col-lg-5">  
								 		<!-- <input type="text"  id="checkIn" class="form-control"> -->
								 			<select class="form-control" name="checkIn" id="checkIn" style="text-align: center;">
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
								 			<select class="form-control" name="checkOut" id="checkOut" style="margin-left: -20px; text-align: center">
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
									    
									     	<div class="select">
											     <input type="radio" id="select" name="careType" value="1"><label for="select">타임케어</label>
											     <input type="radio" id="select2" name="careType" value="2"><label for="select2">데이케어</label>
											</div>
									 </div>
							  </div><br><br>
				            	<span>맡기시는 반려동물</span>
					            <select id="petChoice" class="form-select" multiple="multiple" size="7"style="text-align: center; background-color: #FFFAF0" required="required" >
					            	<option value="" selected>반려동물 선택</option>
					            	 <c:forEach var="pet" items="${petList}" >
					            	 	<c:if test="${sitter.petSizeId < pet.weightId }">
					            	 		<option value="${pet.shaId }/${pet.weightId}" disabled="disabled" style="color:red">${pet.name}</option>
					            	 	</c:if>
					            	 	
					            	 	<c:if test="${sitter.petSizeId >= pet.weightId}">
					            	 	<option value="${pet.shaId }/${pet.weightId}" >${pet.name}</option>
					            	 	</c:if>
					            	 </c:forEach>
					            </select>
					            <span style="color:gray; font-size:10pt; font-weight: light;font-family: 맑은 고딕">※펫시터님의 돌봄 가능 한 펫크기가 보다 큰 펫의 경우는 붉은 글씨로 표시됩니다.</span>
					            <br><br>
			        			<div class="form-group"style="margin-top:30px;margin-bottom: 25px;">
				            		요청사항
				            	 	<div>
				            	 		 <textarea class="form-control" id="" name="content" rows="4"></textarea>
				            	 </div>
				            	 주소
				            	 <div class="row">
			                     	   
			                        <div class="col-md-7">
			                        	<input class="form-control" type="text" name="code" id="code" placeholder="우편번호" readonly="readonly">
			                        </div>
			                        <div class="col-md-5">
			                        	<input type="button" class="btn postCodeBtn btn-outline-secondary" onclick="DaumPostcode()" value="주소찾기">
			                        </div>
									<div>
										<input class="form-control" type="text" name="addr" id="addr" placeholder="주소" readonly="readonly" 
										style="margin-top:5px;  margin-bottom: 5px;">
										<input class="form-control" type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
										<input type="hidden" name="lat" id="lat" readonly="readonly">
										<input type="hidden" name="lng" id="lng" readonly="readonly">
									</div>
			                    </div>
							  </div><br><br>
			        			<div class="col text-center">
				                    <button type="button" id="doRequest"  class="but btn" style="background-color: #FE5C17; color: white; margin-top:30px;"
				                   >예약요청</button>
				                </div>
				                 <input type="hidden" name="petShaIdArr" id="petShaIdArr">
				                 <input type="hidden" name="pay" id="pay">
				             	 <input type="hidden" name="refBankId" id="refBank">
				             	 <input type="hidden" name="refDepositor" id="refDepositor">
				             	 <input type="hidden" name="refAccNum" id="refAccNum">
								 <input type="hidden" name="allowId" id="refAccNum" value="${sitter.allowId}">
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
								  		<td>-5,000</td>
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
   <div>

  
  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" style="width:600px;">
      <div class="modal-content pay">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">결제하기</h5>
        </div>
        <div class="modal-body" >
            <table class="table tab2">
                <tr>
                    <th style="width:220px;">기본 금액</th>
                    
                    <td><span id="basicCost"></span></td>       
                </tr>
                <tr>
                    <th>시간 당 추가요금(타임케어)</th>
                    <td><span id="timeCost"></span></td>       
                </tr>
                <tr>
                    <th>일당 추가요금(데이케어)</th>
                    <td><span id="dayCost"></span></td>       
                </tr>
                <tr>
                    <th>등급 추가요금</th>
                    <td><span id="gradeCost"></span></td>       
                </tr>
                <tr>
                    <th>반려동물 추가 요금</th>
                    <td><span id="petCost"></span></td>       
                </tr>
                <tr>
                    <th>긴급요청 추가요금</th>
                    <td>0원</td>       
                </tr>
                <tr>
                    <th>반려동물 크기별 추가 요금</th>
                    <td><span id="weightCost"></span></td>           
                </tr>
                <tr>
                    <td> </td>
                </tr>
                <tr>
                    <th colspan="2" class="border-bottom">결제금액 </th>
                </tr>

                <tr>
                    <td colspan="2" >
                        <span id="totalCost"></span>
                    </td>
                </tr>
                <tr>
                    <th >환불 계좌번호('-'없이 입력)</th>
                    <td><input type="text" id="tmpRefAccNum" class="form-control"></td>
                </tr>
                <tr>
                     <th>환불 계좌 예금주명</th>
                    <td><input type="text" id="tmpRefName" class="form-control"></td>
                </tr>
                 <tr>
                    <th>환불 계좌 은행</th>
                    <td><select name="bankId" class="m_font form-select" id="bank" >
							<option value="0" selected> -- 은행 선택 -- </option>
							<option value="1">신한은행</option>
							<option value="2">NH농협은행</option>
							<option value="3">카카오뱅크</option>
							<option value="4">우리은행</option>
							<option value="5">IBK기업은행</option>
							<option value="6">하나은행</option>
							<option value="7">케이뱅크</option>
							<option value="8">새마을금고</option>
							<option value="9">우체국</option>
							<option value="10">신협은행</option>
						</select></td>
                </tr>
            </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          <button type="button" class="btn btn-primary" id="payment">결제</button>
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