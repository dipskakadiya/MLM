<!DOCTYPE html>
<html lang="en">
<head>

<title>Member Detail</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="Css_Jq.jsp"></jsp:include>
</head>
<body>
	<!-- Heder -->
	<jsp:include page="Header.jsp"></jsp:include>

	<!-- left_menu -->
	<jsp:include page="Left_Menu.jsp"></jsp:include>

	<div id="content">
		<div class="inner">
			<!-- Logo_Submenu -->
			<jsp:include page="Submenu.jsp"></jsp:include>
			<div class="row-fluid">

				<div class="widget  span12 clearfix">
					<div class="widget-header">
						<span><i class="icon-home"></i> Member manager </span>
					</div>
					<!-- End widget-header -->
					<div class="widget-content">


						<div id="UITab" class="clearfix" style="position: relative;">
							<ul class="tabs">
								<li><a href="#tab1"> live demo <img
										src="images/icon/new.gif" width="20" height="9" /></a></li>
							</ul>

							<div class="tab_container">
								<div id="tab1" class="tab_content">
									<div class="load_page">
										<div class="alert alert-block  alert-info">
											Can see action with click <strong>Add Product !</strong>.
										</div>
										<div class="btn-group pull-top-right btn-square">
											<a class="btn  btn-large on_load" name="#tab2"
												href="javascript:void(0)" title="Add Member"><i
												class="icon-plus"></i> Add Member</a> <a
												class="btn  btn-large btn-danger DeleteAll"
												href="javascript:void(0)"><i class="icon-trash"></i>
												Delete All</a>
										</div>
										<table class="table table-bordered table-striped data_table3 "
											id="data_table3">
											<thead align="center">
												<tr>
													<th width="18">
														<div class="checksquared">
															<input type="checkbox" id="checkAll1" class="checkAll" /><label
																for="checkAll1"></label>
														</div>
													</th>
													<th width="60">Media</th>
													<th>Name</th>
													<th>ID</th>
													<th width="120">Status</th>
													<th>Management</th>
												</tr>
											</thead>
											<tbody align="center">
												<tr>
													<td><div class="checksquared">
															<input type="checkbox" name="checkbox[]" /><label></label>
														</div></td>
													<td><img data-src="holder.js/60x40" alt=""></td>
													<td>Title Name</td>
													<td>18769</td>
													<td><span class="checkslide"> <input
															type="checkbox" checked="checked" /> <label data-on="On"
															data-off="Off"></label>
													</span></td>
													<td><span class="tip"><a
															href="modalEdit2dfa.html?idEdit=edit" class="pop_box"
															title="Edit"><img src="images/icon/icon_edit.png"></a></span>
														<span class="tip"><a href="javascript:void(0)"
															class="Delete" name="delete name" title="Delete"><img
																src="images/icon/icon_delete.png"></a></span></td>
												</tr>
												<tr>
													<td><div class="checksquared">
															<input type="checkbox" name="checkbox[]" /><label></label>
														</div></td>
													<td><img data-src="holder.js/60x40" alt=""></td>
													<td>Title Name</td>
													<td>18769</td>
													<td><span class="checkslide"> <input
															type="checkbox" checked="checked" /> <label data-on="On"
															data-off="Off"></label>
													</span></td>
													<td><span class="tip"><a
															href="modalEdit2dfa.html?idEdit=edit" class="pop_box"
															title="Edit"><img src="images/icon/icon_edit.png"></a></span>
														<span class="tip"><a href="javascript:void(0)"
															class="Delete" name="delete name" title="Delete"><img
																src="images/icon/icon_delete.png"></a></span></td>
												</tr>

												<tr>
													<td><div class="checksquared">
															<input type="checkbox" name="checkbox[]" /><label></label>
														</div></td>
													<td><img data-src="holder.js/60x40" alt=""></td>
													<td>Title Name</td>
													<td>18769</td>
													<td><span class="checkslide"> <input
															type="checkbox" checked="checked" /> <label data-on="On"
															data-off="Off"></label>
													</span></td>
													<td><span class="tip"><a
															href="modalEdit2dfa.html?idEdit=edit" class="pop_box"
															title="Edit"><img src="images/icon/icon_edit.png"></a></span>
														<span class="tip"><a href="javascript:void(0)"
															class="Delete" name="delete name" title="Delete"><img
																src="images/icon/icon_delete.png"></a></span></td>
												</tr>
											</tbody>
										</table>

									</div>
									<div class="show_add" style="display: none">

										<div class="btn-group pull-top-right btn-square">
											<a class="btn  btn-large on_prev" name="#tab2"
												href="javascript:void(0)" id="on_prev_pro"
												onClick="jQuery('#validation_demo').validationEngine('hideAll')"
												title="Go Back"><i class="icon-share-alt"></i> Back </a>
										</div>
										<div class="row-fluid">

											<!-- Widget -->
											<div class="widget  span12 clearfix">

												<div class="widget-header">
													<span><i class="icon-hand-right"></i> Wizard
														Validate</span>
												</div>
												<!-- End widget-header -->

												<div class="widget-content">
													<form action="Controller" method="get" id="Addmemeber" >
														<input type="hidden" name="Action" value="Addmember">
														<!-- Smart Wizard -->
														<div id="wizardvalidate" class="swMain">
															<ul>
																<li><a href="#step-1"> <label
																		class="stepNumber">1</label> <span class="stepDesc">
																			Account <br /> <small>account details</small>
																	</span>
																</a></li>
																<li><a href="#step-2"> <label
																		class="stepNumber">2</label> <span class="stepDesc">
																			Profile <br /> <small>profile details</small>
																	</span>
																</a></li>
																<li><a href="#step-3"> <label
																		class="stepNumber">3</label> <span class="stepDesc">
																			Contact <br /> <small>contact details</small>
																	</span>
																</a></li>
																<li><a href="#step-4"> <label
																		class="stepNumber">4</label> <span class="stepDesc">
																			Image <br /> <small>Profile Picture</small>
																	</span>
																</a></li>
															</ul>

															<div id="step-1" style="width: 100%; height: 450px">
																<h2 class="StepTitle">Step 1: Account Details</h2>

																<div class="section">
																	<label> Login Account <small></small></label>
																	<div>
                                                                                                                                            <input type="text" readonly="readonly"
																			name="userid" id="userid" 
																			class="medium" /><label id="msg_username"
																			class="red"></label> <span class="f_help">
																			Unique Identification No</span>
																	</div>

																</div>
                                                                                                                                <div class="section">
																	<label> Login Account <small></small></label>
																	<div>
																		<input type="text" placeholder="Username"
																			name="username" id="username" 
																			class="medium" /><label id="msg_username"
																			class="red"></label> <span class="f_help">
																			Username login or register. </span>
																	</div>

																</div>
																<div class="section">
																	<label> Email Account <small>Text
																			custom</small></label>
																	<div>
																		<input type="text" placeholder="Email" class="medium"
																			name="email" id="email" /><label
																			id="msg_email" class="red"></label>
																			<span class="f_help">
																			<b>Password Receive on These Email.</b> </span>
																	</div>
																</div>
																<div class="section">
																	<label> Mobile Phone <small>Text custom</small></label>
																	<div>
																		<input type="text" placeholder="mobile" class="medium"
																			name="mobile" id="mobile" /><label
																			id="msg_mobile" class="red"></label>
																			<span class="f_help">
																			<b>Password Send via SMS also.</b> </span>
																	</div>
																</div>

															</div>
															<div id="step-2" style="width: 100%; height: 400px;">
																<h2 class="StepTitle">Step 2: Profile Details</h2>

																<div class="section">
																	<label> First Name <small></small></label>
																	<div>
																		<input type="text" placeholder="Firstname"
																			class="medium" name="firstname" id="firstname"
																			/><label id="msg_firstname" class="red"></label>
																	</div>
																</div>
																<div class="section">
																	<label> Last Name <small></small></label>
																	<div>
																		<input type="text" placeholder="Lastname"
																			class="medium" name="lastname" id="lastname"/><label id="msg_lastname" class="red"></label>
																	</div>
																</div>
																<div class="section">
																	<label>gender<small></small></label>
																	<div>
																		<div>
																			<input type="radio" name="optgender" id="radio-1"
																				value="1" class="ck" /> <label for="radio-1">Male</label>
																		</div>
																		<div>
																			<input type="radio" name="optgender" id="radio-2"
																				value="1" class="ck" checked="checked" /> <label
																				for="radio-2">Female</label>
																		</div>
																	</div>
																</div>
																<div class="section last">
																	<label> Birthday Date <small>YYYY/MM/DD</small></label>
																	<div>
																		<input type="text" placeholder="Lastname"
																			class="medium birthday"
																			name="birthdate" id="birthday" /><label
																			id="msg_birthday" class="red"></label>
																	</div>
																</div>


															</div>
															<div id="step-3" style="width: 100%; height: 400px;">
																<h2 class="StepTitle">Step 3: Contact Details</h2>

																<div class="section">
																	<div class="span4">
																		<label> Address <small>Text custom</small></label>
																		<div>
																			<textarea placeholder="Address" class="large"
																				name="address" id="address"></textarea>
																			<span class="f_help"> Limit chars <span
																				class="limitchars">200</span></span> <label
																				id="msg_address" class="red"
																				style="font-size: 11px; color: red;"></label>
																		</div>
																	</div>
																	<div class="section" style="border: none;">
																		<label>Select Country<small></small></label>
																		<div>
																			<select data-placeholder="Choose a Country..."
																				id="country" name="country" class="chzn-select"
																				tabindex="2">
																				<option value=""></option>
																				<option value="United States">United States</option>
																				<option value="United Kingdom">United
																					Kingdom</option>
																				<option value="Zimbabwe">Zimbabwe</option>
																			</select> <label id="msg_country" class="red"></label>
																		</div>
																	</div>
																	<div class="section" style="border: none;">
																		<label>Select State<small></small></label>
																		<div>
																			<select data-placeholder="Choose a State..."
																				id="state" name="state" class="chzn-select"
																				tabindex="2">
																				<option value=""></option>
																				<option value="United States">United States</option>
																				<option value="Barbados">Barbados</option>
																			</select> <label id="msg_state" class="red"></label>
																		</div>
																	</div>
																	<div class="section" style="border: none;">
																		<label>Select City<small></small></label>
																		<div>
																			<select data-placeholder="Choose a City..." id="city"
																				name="city" class="chzn-select" tabindex="2">
																				<option value=""></option>
																				<option value="United States">United States</option>
																			</select> <label id="msg_city" class="red"></label>
																		</div>
																	</div>
																</div>

																<div class="section numericonly last">
																	<label> Pincode<small></small></label>
																	<div>
																		<input type="text" name="pincode" id="pincode"
																			class="small" /> <label id="msg_pincode" class="red"></label>
																	</div>
																</div>

															</div>
															<div id="step-4">
																<h2 class="StepTitle">Step 4: Profile Picture</h2>
																<div style="margin-left: 350px;" class="section avartar">
																	<img src="images/avartarB.jpg" width="250" height="250"
																		alt="avatar" />
																</div>
																<div style="margin-top: 10px; margin-left: 400px;"
																	class="avartar">
																	<input type="file" id="P_image" name="P_image"
																		class="fileupload" />
																</div>
															</div>
															</div>
															<!-- End SmartWizard Content -->
													</form>
													<div class="clearfix"></div>
												</div>
												<!--  end widget-content -->
											</div>
											<!-- widget  span12 clearfix-->

										</div>
										<!-- row-fluid -->
									</div>
								</div>
								<!--tab2-->

							</div>
						</div>
						<!-- end uitab-->



					</div>
					<!--  end widget-content -->
				</div>
				<!-- widget  span12 clearfix-->
			</div>
			<!-- row-fluid -->
			<!-- Footer -->
			<jsp:include page="Footer.jsp"></jsp:include>
		</div>
		<!--// End inner -->
	</div>
	<!--// End ID content -->


</body>

<!-- Mirrored from zicedemo.com/1.7/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:25:10 GMT -->
</html>


<script type="text/javascript">
			jQuery(document).ready(function() {
				 $('#address').limit('200','.limitchars');
				 $("#mobile").mask("999-999-9999");
				jQuery("#demovalidation").validationEngine({
					prettySelect : true,
					useSuffix: "_chzn",
				});
				
			  // Example Overlay form
			  $(".on_load").live('click',function(){	
				  $('body').append('<div id="overlay"></div>');
				  $('#overlay').css('opacity',0.4).fadeIn(400);
				  var activeLoad = $(this).attr("name");		
				  var titleTabs = $(this).attr("title");		
				  $("ul.tabs li").hide();		
						  $('ul.tabs li').each(function(index) {
								  var activeTab = $('ul.tabs li:eq('+index+')').find("a").attr("href");			
								  if(activeTab==activeLoad){
									  $("ul.tabs ").append('<li class=active><a href="'+activeLoad+'" class=" prev on_prev "  id="on_prev_pro" name="'+activeLoad+'" >'+titleTabs+'</a></li>');
									  $("ul.tabs li:last").fadeIn();	
									  }
						  });
				  $('.widget-content').css({'position':'relative','z-index':'1001'});
				  $(".load_page").hide();
				  $('.show_add').show();
			   });
			  
			  $(".on_prev").live('click',function(){	 
					$("ul.tabs li:last").remove();					 
					$("ul.tabs li").fadeIn();
					//var pageLoad = $(this).attr("rel");	
					var activeLoad = $(this).attr("name");		
					  $(".show_add, .show_edit").hide();		
					  $(".show_edit").html('').hide();		
						  $(activeLoad).fadeIn();	
								  $(' .load_page').fadeIn(400,function(){   
										 $('#overlay').fadeOut(function(){
												   $('.widget-content').delay(500).css({'z-index':'','box-shadow':'','-moz-box-shadow':'','-webkit-box-shadow':''});
										  }); 
							  }); 
					ResetForm();
				   });	
			});
		</script>

<script type="text/javascript">
            $(document).ready(function(){
                // Smart Wizard     	
                $('#wizardvalidate').smartWizard({transitionEffect:'slideleft',onLeaveStep:leaveAStepCallback,onFinish:onFinishCallback,enableFinishButton:true});
        
              function leaveAStepCallback(obj){
					var step_num= obj.attr('rel');
					return validateSteps(step_num);
              }
              
              function onFinishCallback(){
				   if(validateAllSteps()){
						 $('form').submit();
				   }
              }
                    
           });
            function validateAllSteps(){
               var isStepValid = true;
               if(validateStep1() == false){
                 isStepValid = false;
                 $('#wizardvalidate').smartWizard('setError',{stepnum:1,iserror:true});         
               }else{
                 $('#wizardvalidate').smartWizard('setError',{stepnum:1,iserror:false});
               }
           		// add more if you want to validateStep 2
               if(validateStep2() == false){
                 isStepValid = false;
                 $('#wizardvalidate').smartWizard('setError',{stepnum:3,iserror:true});         
               }else{
                 $('#wizardvalidate').smartWizard('setError',{stepnum:3,iserror:false});
               }
               
               if(validateStep3() == false){
                 isStepValid = false;
                 $('#wizardvalidate').smartWizard('setError',{stepnum:3,iserror:true});         
               }else{
                 $('#wizardvalidate').smartWizard('setError',{stepnum:3,iserror:false});
               }
               
               if(!isStepValid){
                  $('#wizardvalidate').smartWizard('showMessage','Please correct the errors in the steps and continue');
               }
                      
               return isStepValid;
            } 	
                
                
                function validateSteps(step){
                  var isStepValid = true;
					  // validate step 1
					  if(step == 1){
							if(validateStep1() == false ){
							  isStepValid = false; 
							  $('#wizardvalidate').smartWizard('showMessage','Please correct the errors in step'+step+ ' and click next.');
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:true});         
							}else{
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:false});
							}
					  }
        
					  // validate step 2
					  if(step == 2){
							if(validateStep2() == false ){
							  isStepValid = false; 
							  $('#wizardvalidate').smartWizard('showMessage','Please correct the errors in step'+step+ ' and click next.');
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:true});         
							}else{
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:false});
							}
					  }
					  
					  // validate step3
					  if(step == 3){
							if(validateStep3() == false ){
							  isStepValid = false; 
							  $('#wizardvalidate').smartWizard('showMessage','Please correct the errors in step'+step+ ' and click next.');
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:true});         
							}else{
							  $('#wizardvalidate').smartWizard('setError',{stepnum:step,iserror:false});
							}
					  }
              
              return isStepValid;
            }
                
                function validateStep1(){
                    var isValid = true;  
                    //validate Username
                     var username = $('#username').val();
                     if(!username && username.length <= 0){
                       isValid = false;
                       $('#msg_username').html('Please fill UserName').show();         
                     }else{
                       $('#msg_username').html('').hide();
                     } 
                     
                   //validate mobile
                     var mobile = $('#mobile').val();
                     if(!mobile && mobile.length <= 0){
                       isValid = false;
                       $('#msg_mobile').html('Please fill Mobile phone').show();         
                     }else{
                       $('#msg_mobile').html('').hide();
                     } 
                     
                    //validate email  
                    var email = $('#email').val();
                     if(email && email.length > 0){
                       if(!isValidEmailAddress(email)){
                         isValid = false;
                         $('#msg_email').html('Email is invalid').show();           
                       }else{
                        $('#msg_email').html('').hide();
                       }
                     }else{
                       isValid = false;
                       $('#msg_email').html('Please enter email').show();
                     }       
                    return isValid;
                  }
                
                function validateStep2(){
                    var isValid = true;    
                     
                    // Validate firstname
                     var fname = $('#firstname').val();
                     if(!fname && fname.length <= 0){
                       isValid = false;
                       $('#msg_firstname').html('Please fill firstname').show();
                     }else{
                       $('#msg_firstname').html('').hide();
                     }
                     
                     // validate lastname
                     var lname = $('#lastname').val();
                     if(!lname && lname.length <= 0){
                       isValid = false;
                       $('#msg_lastname').html('Please fill lastname').show();         
                     }else{
                       $('#msg_lastname').html('').hide();
                     }
                     
                  // validate lastname
                     var birthday = $('#birthday').val();
                     if(!birthday && birthday.length <= 0){
                       isValid = false;
                       $('#msg_birthday').html('Please fill Birtday').show();         
                     }else{
                       $('#msg_birthday').html('').hide();
                     }
                     
                     return isValid;
                  }
                
                function validateStep3(){
                    var isValid = true;

                    // validate address
                    var address = $('#address').val();
                    if(!address && address.length <= 0){
                      isValid = false;
                      $('#msg_address').html('Please fill Address').show();         
                    }else{
                      $('#msg_address').html('').hide();
                    }
                    
                 // validate Country
                    var country = $('#country').val();
                    if(!country && country.length <= 0){
                      isValid = false;
                      $('#msg_country').html('Please choose Country').show();         
                    }else{
                      $('#msg_country').html('').hide();
                    }
                    
                 // validate State
                    var state = $('#state').val();
                    if(!state && state.length <= 0){
                      isValid = false;
                      $('#msg_state').html('Please choose State').show();         
                    }else{
                      $('#msg_state').html('').hide();
                    }
                    
                 // validate City
                    var city = $('#city').val();
                    if(!city && city.length <= 0){
                      isValid = false;
                      $('#msg_city').html('Please choose City').show();         
                    }else{
                      $('#msg_city').html('').hide();
                    }
                    
                 // validate Pincode
                    var pincode = $('#pincode').val();
                    if(!pincode && pincode.length <= 0){
                      isValid = false;
                      $('#msg_pincode').html('Please choose pincode').show();         
                    }else{
                      $('#msg_pincode').html('').hide();
                    }
                    
                    return isValid;
                }
            
            // Email Validation
            function isValidEmailAddress(emailAddress) {
              var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
              return pattern.test(emailAddress);
            } 
                
        </script>
