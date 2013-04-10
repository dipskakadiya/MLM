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
               
              <div id="content" >
                <div class="inner">
                    <!-- Logo_Submenu -->
                    <jsp:include page="Submenu.jsp"></jsp:include>               
                    <div class="row-fluid">
                    		
                            <div class="widget  span12 clearfix">
                                <div class="widget-header">
                                    <span><i class="icon-home"></i> Member manager </span>
                                </div><!-- End widget-header -->	
                                <div class="widget-content">
                                       
                                       <form id="payment" action="#"> 
                                      
                                            <div class="section ">
                                            <label> Entry Date</label>   
                                            <div> 
                                            <input type="text" class="validate[required] medium" name="date" id="date">
                                            </div>
                                            </div>
                                            
                                            <div class="section ">
                                            <label> Order No</label>   
                                            <div> 
                                            <select name="bills_no">
                                            </select>
                                            </div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                            <label> Total Amount</label>
                                            <div>
                                            <input type="text"  name="amount" id="amount"  class="validate[required,minSize[3],maxSize[20],] medium"  />
                                            </div>
                                            </div>
                                            <div class="section ">
                                            <label> Bill Remarks</label>   
                                            <div> 
                                            <textarea name="bill_remark" id="bill_remark" rows="4" cols="5"></textarea>
                                            </div>
                                            </div>
                                            
                                           
                                            <div class="section last">
                                            <div>
                                              <a class="uibutton submit_form" >submitForm</a>
                                           </div>
                                           </div>
                                      </form>
                                     
                                     </div>	
                                  </div><!--tab2-->

                          </div>
                          </div><!-- end uitab-->
                                
                                
                                
                                </div><!--  end widget-content -->
                            </div><!-- widget  span12 clearfix-->
                   </div><!-- row-fluid -->
                   <!-- Footer -->
                   <jsp:include page="Footer.jsp"></jsp:include>  
                </div> <!--// End inner -->
              </div> <!--// End ID content --> 

        
        </body>
        
<!-- Mirrored from zicedemo.com/1.7/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:25:10 GMT -->
</html>


<script type="text/javascript">
			jQuery(document).ready(function() {
				jQuery("#payment").validationEngine({
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
								  var activeTab = $('ul.tabs li:eq('+index+')').find("a").attr("href")			
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
					var pageLoad = $(this).attr("rel");	
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



