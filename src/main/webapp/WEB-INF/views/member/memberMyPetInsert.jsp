<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>memberMyPetInsert</title>
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
    
    <link rel="stylesheet" href="/css/member/fsitter/fsitterMyPetInsert.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/main.css">
<style type="text/css">
	.input-file-button{
  padding: 6px 25px;
  background-color:#FE5C17;
  border-radius: 4px;
  color: white;
  cursor: pointer;
  margin-top : 10px;
  margin-left:50px;
  }
  
  .petProfile {
   width:150px;
   height:150px;
   object-fit: cover;
   border-radius:30px;
   margin-bottom: 30px;
   border: 2px solid #fffff;
  }
}

</style>
    
<script type="text/javascript">
$(document).ready(function () {
    $.datepicker.monthpicker = {
    	maxDate: 0,
        closeText: '??????',
        nextText : '?????? ???',
        prevText : '?????? ???',
        currentText : "??????",
        changeMonth : true,
        changeYear : true,
        monthNames : ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
        monthNamesShort : ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
        dayNames : [ "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????" ],
        dayNamesShort : ['???', '???', '???', '???', '???', '???', '???'],
        dayNamesMin : ['???', '???', '???', '???', '???', '???', '???'],
        weekHeader : "???",
        firstDay : 0,
        isRTL : false,
        showMonthAfterYear : true,
        yearSuffix : "???",
        showOn: 'both',
        // buttonText: "??????",
        showButtonPanel: false,
        dateFormat: 'yy/mm/dd',          
        yearRange: "-10:+0",
};
      
$.datepicker.setDefaults($.datepicker.monthpicker);

      var datepicker_default = {
          showOn: 'both',
          buttonText: "??????",
          currentText: "?????????",
          changeMonth: true,
          changeYear: true,
          showButtonPanel: true,
          yearRange: 'c-99:c+99',
          showOtherMonths: true,
          selectOtherMonths: true
      }
      datepicker_default.closeText = "??????";
      datepicker_default.dateFormat = "yy-mm-dd";
      datepicker_default.onClose = function (dateText, inst) {
          var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
          var day = $("#ui-datepicker-div .ui-datepicker-day :selected").val();
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
          $(this).datepicker('setDate', new Date(year, month, 1));
      }
      datepicker_default.beforeShow = function () {
          var selectDate = $("#sdate").val().split("-");
          var year = Number(selectDate[0]);
          var month = Number(selectDate[1]) - 1;
          var day = Number(selectDate[0]);
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
      }
      $(".month_picker").datepicker(datepicker_default);
      
      
      $(function() { // ?????? ?????????
    	    $('#img_select1').change(function() {
    	       setImageFromFile(this, '#preview1');
    	    });
    	 });
    	 //?????? ?????????
    	 function setImageFromFile(input, expression) {
    	    if (input.files && input.files[0]) {
    	       var reader = new FileReader();

    	       reader.onload = function(e) {
    	          $(expression).attr('src', e.target.result);
    	       }
    	       reader.readAsDataURL(input.files[0]);
    	    }
    	 }
    	 
    	 
    $("#d_or_cat_id").change(function(){
    	$("#kind").find("option").each(function(){
				$(this).css("display","inline");
    	});
    
   		$("#kind").find("option").each(function(){
   			if(parseInt(this.value) >= 27 && parseInt(this.value) != 40 && parseInt(this.value) != 100)
   			{
   				$(this).css("display","none");
   				$("#kind").val('100').prop('selected','selected');
   			}
   		});
    		
    	
    });
    $("#d_or_cat_id2").change(function(){
    	$("#kind").find("option").each(function(){
			$(this).css("display","inline");
		});
   		$("#kind").find("option").each(function(){
   			if(parseInt(this.value) < 27 || parseInt(this.value) == 40 || parseInt(this.value) == 100)
   			{
   				$(this).css("display","none");
   				$("#kind").val('101').prop('selected','selected');
   			}
   		});
    	
    	
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

    <!-- ???????????? ?????? ?????? -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
		        	
		        	<span class="font h_font">??? ??? ??????</span>
		        	<div class="box_miInfo">
		        	
		       			<div class="form-inline">
		       				<form action="/member/petInsert" method="post" enctype="multipart/form-data">
		       				
							<div class="form-group">

								<div class="size_fix">
                              <img src="/images/member/no_Img.png" id="preview1" style="width: 100px; height:100px; object-fit: cover;"/>  
                              <label for="img_select1" class="input-file-button">?????? ??????</label> 
	                          <input type="file" id="img_select1" name="file" style="display: none;" />
		       		
						<!-- <label for="photo">?????? ??????</label><br>
							<input type="file" class="real-upload" accept="image/*" required multiple> -->
						</div>
								<label for="d_or_cat_id">??????</label><br>

						<!--<div>
	                               <img src="/images/member/no_Img.png" id="preview1" class="petProfile"/> 
	                              <label for="img_select1" class="input-file-button">?????? ??????</label> 
		                          <input type="file" id="img_select1" name="file" style="display: none;" required="required"/>
								</div>
								<label for="kinds">??????</label><br>-->

							 	<div class="radio">
							 		<label>
								    	<input type="radio" name="dogcat" id="d_or_cat_id" value="1">
								    	?????????&emsp;&emsp;&emsp;
								 	</label>
								 	<label>
								 		<input type="radio" name="dogcat" id="d_or_cat_id2" value="2">
								    	?????????
								    </label>	
								</div>
								<br><br>
								
								<label for="name">??????</label><br>
								<label>
							   	<input type="text" class="form-control" name="name" id="name" placeholder="???) ?????????">
							 	</label>
							 	<br><br>
							 	
							 	<label for="gender">??????</label><br>
							 	<div class="radio">
							 		<label>
								    	<input type="radio" name="gender" id="gender1" value="1">
								    	???&emsp;&emsp;&emsp;&emsp;&emsp;
								    </label>
								    <label>
								    	<input type="radio" name="gender" id="gender2" value="2">
								    	???
								    </label>	
								</div>
								<br><br>
								
								<!-- ???????????? ????????? ????????? ?????? ????????? ????????? -->
								<label for="kind">??????</label><br>
									<label>
							   		<select class="form-select" name="kind" id="kind"style="text-align: center;">
										  <option value="100"selected>-- ????????? ?????? --</option>
										  <option value="1">?????????????????????</option>
										  <option value="2">??????</option>
										  <option value="3">?????????</option>
										  <option value="4">???????????? ????????????</option>
										  <option value="5">????????????</option>
										  <option value="6">????????????</option>
										  <option value="7">???????????? ?????????</option>
										  <option value="8">????????? ?????????</option>
										  <option value="9">????????????</option>
										  <option value="10">????????????</option>
										  <option value="11">????????????</option>
										  <option value="12">?????????</option>
										  <option value="13">????????????</option>
										  <option value="14">???????????????</option>
										  <option value="15">??????</option>
										  <option value="16">??? ?????? ?????????</option>
										  <option value="17">???????????????</option>
										  <option value="18">???????????? ??????</option>
										  <option value="19">?????????</option>
										  <option value="20">????????? ?????????</option>
										  <option value="21">?????????</option>
										  <option value="22">????????????</option>
										  <option value="23">?????????</option>
										  <option value="24">??????</option>
										  <option value="25">???????????????</option>
										  <option value="26">?????? ??? ?????????</option>
										  <option value="40">??????</option>
										  <option value="101">-- ????????? ?????? --</option>
										  <option value="27">?????????????????????</option>
										  <option value="28">???????????????</option>
										  <option value="29">?????????????????????</option>
										  <option value="30">?????????????????????</option>
										  <option value="31">??????</option>
										  <option value="32">???????????????</option>
										  <option value="33">??????????????????</option>
										  <option value="34">????????????</option>
										  <option value="35">?????????</option>
										  <option value="36">?????????</option>
										  <option value="37">??????</option>
										  <option value="38">??????????????????</option>
										  <option value="39">???????????? ???</option>
										  <option value="41">??????</option>
									</select>
								</label>
							 	<br><br>
							 	
							 	<label for="datepicker">????????????</label><br>
							 		<label>
							 		<input type="text"  id="datepicker" name="birthday"class="form-control">
							 		</label>
								 	<!-- ???????????? datepicker  -->
									<script type="text/javascript">
										$("#datepicker").datepicker();
									</script>
									<br><br>
							 	
							 	<label for="weight">?????????</label><br>
							 	<label>
							   	<input type="text" class="form-control" id="weight" name="weight" placeholder="???) 2.8">
							 	</label>
							 	
							 	<br><br>
							 	
							 	<label for="g_id">?????????</label><br>
							 	<div class="radio">
							 		<label>
									    <input type="radio" name="g" id="g_id" value="1">
									    ???&emsp;&emsp;&emsp;&emsp;&emsp;
									</label>
									<label>    
								    	<input type="radio" name="g" id="g_id" value="2">
								   	 	?????????
								   	</label>
								</div>
								<br><br>
								
		        			</div>
						
						
						
						<div class="form">
							<label for="floatingTextarea2">?????? ????????????</label><br>
								<textarea class="form-control" placeholder="??? ?????? ????????? ???????????? ??? ????????? ?????? ????????? ??????????????? ????????? 300??? ????????? ??????????????????." name="comment" id="floatingTextarea2" style="height: 100px"></textarea>
								<br>
							
								<div class="col text-center">
				                    <button type="submit" class="but btn" style="background-color: #FE5C17; color: white;"
				                   >????????????</button>
				                </div> 
		                </div><!-- <div class="form-floating"> -->	
		                </form>
		                </div>
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
   <!--  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>