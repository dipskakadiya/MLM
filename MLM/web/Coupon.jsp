<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>

        <title>Coupon Detail</title>
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
                                                        class="icon-plus"></i> Add Coupon</a> <a
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
                                                <th>Coupon Code</th>
                                                <th>Rate</th>
                                                <th width="100px">Action</th>
                                                </tr>
                                                </thead>
                                                <tbody align="center">
                                                    <c:forEach items="${com}" var="s">  
                                                        <tr>
                                                            <td><div class="checksquared">
                                                                    <input type="checkbox" name="checkbox[]" /><label></label>
                                                                </div>
                                                            </td>
                                                            <td>${s.getCoupon_Code()}</td>
                                                            <td>${s.getRate()}</td>
                                                            <td>
                                                                <span class="tip"><a original-title="Edit" href="Controller?Action=ShowCoupon&uid=${s.getCoupon_ID()}"><img src="images/icon/icon_edit.png"></a></span> 
                                                                <span class="tip"><a href="Controller?Action=DeleteCoupon&did=${s.getCoupon_ID()}" class="Delete" name="delete name" title="Delete"><img src="images/icon/icon_delete.png"></a></span> 
                                                            </td>

                                                        </tr>
                                                    </c:forEach>
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
                                                        <form id="Addmemeber" method="Post" action="Controller?Action=SaveCoupon" >
                                                            <input type="hidden" name="Action" id="Action" value="SaveMemeber" class="validate[required] medium" />        
                                                            <input type="hidden" name="SubAction" id="SubAction" value="<%if (request.getParameter("uid") != null) {
                                                                    out.print("Update");
                                                                }%>" class="validate[required] medium" />      
                                                            <!-- Smart Wizard -->
                                                            <div id="wizardvalidate" class="swMain">
                                                                <ul>
                                                                    <li><a href="#step-1"> <label
                                                                                class="stepNumber">1</label> <span class="stepDesc">
                                                                                Account <br /> <small>account details</small>
                                                                            </span>
                                                                        </a></li>
                                                                   
                                                                </ul>

                                                                <div id="step-1" style="width: 100%; height: 450px">
                                                                    <h2 class="StepTitle">Step 1: Account Details</h2>

                                                                    <div class="section">
                                                                        <label> Coupon ID <small></small></label>
                                                                        <div>
                                                                            <input type="text" readonly="readonly"
                                                                                   name="couponid" id="couponid" value="${coupon.getCoupon_ID()}" 
                                                                                   class="medium" /><label id="msg_username"
                                                                                   class="red"></label> <span class="f_help">
                                                                                Unique Identification No</span>
                                                                        </div>

                                                                    </div>
                                                                    <div class="section">
                                                                        <label> Coupon Code <small></small></label>
                                                                        <div>
                                                                            <input type="text" placeholder="Coupon Code"
                                                                                   name="coupon_code" id="coupon_code" value="${coupon.getCoupon_Code()}" 
                                                                                   class="medium" /><label id="msg_username"
                                                                                   class="red"></label> 
                                                                        </div>
                                                                    </div>
                                                                   <div class="section">
                                                                        <label> Rate <small></small></label>
                                                                        <div>
                                                                            <input type="text" placeholder="Rate"
                                                                                   name="rate" id="rate" value="${coupon.getRate()}" 
                                                                                   class="medium" /><label id="msg_username"
                                                                                   class="red"></label> 
                                                                        </div>
                                                                   </div>
                                                                         <div class="section last">
                                                                            <div>
                                                                                <a class="uibutton submit_form" >submitForm</a>
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
            useSuffix: "_chzn"
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
        
        
    //Getting All State
    $.ajax({url:"Controller?Action=CallAjax&SubAction=GetState&id="+$('#country').val(),success:function(result){
            $('#stateDisplay').html(result);
        }}); 
    $('#country').change( function() {
        $.ajax({url:"Controller?Action=CallAjax&SubAction=GetState&id="+$(this).val(),success:function(result){
                $('#stateDisplay').html(result);
            }});
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
