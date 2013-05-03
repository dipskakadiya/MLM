<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>

        <title>Withdraw Detail</title>
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
                        <!-- End widget-header -->	
                        <div class="widget-content">


                            <div id="UITab" class="clearfix" style="position:relative;">
                                

                                <div class="tab_container" >
                                    <div id="tab1" class="tab_content"> 
                                        <div class="load_page">
                                            <div class="alert alert-block  alert-info">
                                                Can see action with click  <strong>Add Product !</strong>.
                                            </div>
                                           
                                            <table class="table table-bordered table-striped data_table3 "  id="data_table3">
                                                <thead align="center">
                                                    <tr>
                                                        <th width="18">
                                                <div class="checksquared"><input type="checkbox"  id="checkAll1"   class="checkAll" /><label for="checkAll1"></label></div>
                                                </th>
                                                <th>Withdraw Date</th>
                                                <th>Amount</th>
                                                
                                                </tr>
                                                </thead>
                                                <tbody align="center">
                                                    <c:forEach items="${withdraw}" var="s">  
                                                        <tr>
                                                            <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                            
                                                            <td>${s.getWith_date()}</td>
                                                            <td>${s.getAmount()}</td>
                                                            
                                                            
                                                        </tr>
                                                    </c:forEach>   
                                                </tbody>
                                            </table>

                                        </div>	

                                       
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



