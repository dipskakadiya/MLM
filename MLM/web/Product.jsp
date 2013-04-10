<!DOCTYPE html>
<html lang="en">
<head>
        
        <title>Category Detail</title>
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
                                
                                
                                <div id="UITab" class="clearfix" style="position:relative;">
                                    <ul class="tabs">
                                        <li><a href="#tab1">  live demo  <img src="images/icon/new.gif" width="20" height="9" /></a></li>            
                                    </ul>
        
                                <div class="tab_container" >
                                  <div id="tab1" class="tab_content"> 
                                      <div class="load_page">
                                      <div class="alert alert-block  alert-info">
                                        Can see action with click  <strong>Add Product !</strong>.
                                      </div>
                                                    <div class="btn-group pull-top-right btn-square">
                                                      <a class="btn  btn-large on_load" name="#tab2"  href="javascript:void(0)" title="Add Product"><i class="icon-plus"></i>  Add Product</a>
                                                      <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                                    </div>
                                                  <table class="table table-bordered table-striped data_table3 "  id="data_table3">
                                                    <thead align="center">
                                                      <tr>
                                                        <th width="18">
                                                            <div class="checksquared"><input type="checkbox"  id="checkAll1"   class="checkAll" /><label for="checkAll1"></label></div>
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
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
        
                                      </div>	
        
                                     <div class="show_add" style="display:none">
                                          <div class="btn-group pull-top-right btn-square">
                                            <a class="btn  btn-large on_prev" name="#tab2"  href="javascript:void(0)" id="on_prev_pro" onClick="jQuery('#validation_demo').validationEngine('hideAll')" title="Go Back" ><i class="icon-share-alt"></i>  Back </a>
                                            <a class="btn  btn-large" href="javascript:void(0)" onClick="ResetForm()" title="Reset  Form" >Clear Form</a>
                                          </div>        
                                       <form id="validation_demo" action="#"> 
                                      
                                            <div class="section ">
                                            <label> Item Code</label>   
                                            <div> 
                                            <input type="text" class="validate[required] small" name="item_code" id="item_code" readonly="readonly">
                                            </div>
                                            </div>
                                            
                                            <div class="section">
                                            <label> Item Category</label>   
                                            <div>
                                                <select data-placeholder="Choose a Country..." class="chzn-select" tabindex="2" name="item_category" id="item_category" >
                                                <option value=""></option> 
                                                <option value="United States">United States</option> 
                                                <option value="United Kingdom">United Kingdom</option> 
                                                <option value="Afghanistan">Afghanistan</option> 
                                                <option value="Albania">Albania</option> 
                                                </select>       
                                      		</div>
                                      		</div>
                                      		
                                      		<div class="section alphaonly">
                                                <label> Item Name </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="item_name" id="item_name"/></div>
                                            </div>
											
											<div class="section">
											 <div class="avartar"><img src="images/avartarB.jpg" width="180" height="180" alt="avatar" /></div>
											 <br>  <div class="avartar">
                                                   <input type="file" class="fileupload" />
                                             </div>
                                            </div>    
                                                      
                                            <div class="section numericonly">
                                                <label> Op. Stock </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="op_stock" id="op_stock"/></div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                                <label> Op. Rate </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="op_rate" id="op_rate"/></div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                                <label> Op. Amount </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="op_amount" id="op_amount"/></div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                                <label> Sales Rate </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="salesrate" id="salesrate"/></div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                                <label> Item MRP </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="itemmrp" id="itemmrp"/></div>
                                            </div>
                                            
                                            <div class="section numericonly">
                                                <label> Reorder Level </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="reorderlevel" id="reorderlevel"/></div>
                                            </div>
                                            
                                            <div class="section">
                                                <label> Item Label </label>   
                                                <div><input id="radio-1" class="ck" type="radio" value="1" name="opinions">
												<label class="checker" for="radio-1">Yes</label><input id="radio-2" class="ck" type="radio" checked="checked" value="1" name="opinions">
											<label class="checker checked" for="radio-2">No</label></div>
                                            </div>
                                            
                                            <div class="section">
                                            <label> Tax Name </label>   
                                            <div>
                                                <select data-placeholder="Choose Tax Name..." class="chzn-select" tabindex="2" name="tax_name" id="tax_name" >
                                                <option value=""></option> 
                                                <option value="VAT">VAT</option> 
                                                <option value="NAT">NAT</option> 
                                                <option value="SAT">SAT</option> 
                                                <option value="OTHER">OTHER</option> 
                                                </select>       
                                      		</div>
                                      		</div>
                                            
                                            <div class="section numericonly">
                                                <label> Tax Percentage </label>   
                                                <div> <input type="text"  class="validate[required] medium" name="tax_percentage" id="tax_percentage"/></div>
                                            </div>                          
											       
											<div class="section">
                                                <label> ADD TAX </label>   
                                                <div> <input class="uibutton" type="button" name="add_tax" id="add_tax" value="ADD TAX"/></div>
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



