<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>

        <title>Payment Detail</title>
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
                            <span><i class="icon-home"></i> Payment manager </span>
                        </div><!-- End widget-header -->	
                        <div class="widget-content">


                            <div id="UITab" st class="clearfix" style="position:relative;">
                                <ul class="tabs">
                                    <li><a href="#tab1">  Live Payment  <img src="images/icon/new.gif" width="20" height="9" /></a></li>            
                                </ul>

                                <div class="tab_container" >
                                    <div id="tab1" class="tab_content"> 
                                        <div  st class="load_page">
                                            <div class="alert alert-block  alert-info">
                                                Can see action with click  <strong>Payment !</strong>
                                            </div>
                                            <div class="btn-group pull-top-right btn-square">
                                                <a class="btn  btn-large on_load" name="#tab2"  href="javascript:void(0)" title="Payment"><i class="icon-plus"></i> Payment</a>
                                                <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                            </div>
                                            <table class="table table-bordered table-striped data_table3 "  id="data_table3">
                                                <thead align="center">
                                                    <tr>
                                                        <th width="18">
                                                <div class="checksquared"><input type="checkbox"  id="checkAll1"   class="checkAll" /><label for="checkAll1"></label></div>
                                                </th>
                                                <th>Order ID</th>
                                                <th>Member ID</th>
                                                <th>Amount</th>
                                                <th>Payment Date</th>
                                                <th>Remark</th>
                                                <th>Manage</th>
                                                </tr>
                                                </thead>
                                                <tbody align="center">
                                                    <c:forEach items="${AllPayment}" var="s">
                                                        <tr>
                                                            <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                            <td>${s.getOrder_id()}</td>
                                                            <td>${s.getMem_id()}</td>
                                                            <td>${s.getAmount()}</td>
                                                            <td>${s.getPay_date()}</td>
                                                            <td>${s.getRemark()}</td>
                                                            <td>

                                                                <span class="tip" ><a href="Controller?Action=DeletePayment&did=${s.getPay_id()}" class="Delete" name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                            </td>
                                                        </tr>
                                                    </c:forEach>  
                                                </tbody>
                                            </table>

                                        </div>	

                                        <div class="show_add" style="display:none">
                                            <div class="btn-group pull-top-right btn-square">
                                                <a class="btn  btn-large on_prev" name="#tab2"  href="javascript:void(0)" id="on_prev_pro" onClick="jQuery('#validation_demo').validationEngine('hideAll')" title="Go Back" ><i class="icon-share-alt"></i>  Back </a>
                                                <a class="btn  btn-large" href="javascript:void(0)" onClick="ResetForm()" title="Reset  Form" >Clear Form</a>
                                            </div>        
                                            <form id="validation_demo" method="post" action="Controller?Action=SavePayment"> 
                                                <input type="hidden" name="Action" id="Action" value="SavePayment" class="validate[required] medium" />        


                                                <div class="section ">
                                                    <label> Payment ID</label>   
                                                    <div> 
                                                        <input type="text" class="validate[required] small" name="payID" id="payID" readonly="readonly" value="${payID.getPay_id()}">
                                                    </div>
                                                </div>

                                                <div class="section ">
                                                    <label> Payment Date</label>   
                                                    <div> 
                                                        <input type="text" class="validate[required] small birthday" name="date" id="date" value="${Payment.getPay_date()}">
                                                    </div>
                                                </div>

                                                <div class="section">
                                                    <label>Order ID<small></small></label>
                                                    <div>
                                                        <select id="Order" name="Order" data-placeholder="Choose a Order..."
                                                                class="chzn-select validate[required]" tabindex="2">
                                                            <c:forEach items="${Order}" var="s">
                                                                <option value="${s.getOrder_id()}" name="${s.getOrder_id()}">${s.getOrder_id()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="section numericonly">
                                                    <label> Total Amount</label>
                                                    <div>
                                                        <input type="text"  name="amount" id="amount"  class="validate[required] medium" value="${Payment.getAmount()}"/>
                                                    </div>
                                                </div>
                                                <div class="section " >
                                                    <label>Remarks</label>   
                                                    <div> 
                                                        <textarea name="remark" id="remark" rows="4" cols="5">${Payment.getRemark()}</textarea>
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

<script>
    jQuery(document).ready(function() {
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

