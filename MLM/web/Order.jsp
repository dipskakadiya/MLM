<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                        <li id="tablink1"><a href="#tab1"> Add to Cart<img
                                                    src="images/icon/new.gif" width="20" height="9" /></a></li>
                                        <li id="tablink2"><a href="#tab2"> View Cart <img
                                                    src="images/icon/new.gif" width="20" height="9" /></a></li>
                                    </ul>
                                    <div class="tab_container">
                                        <div id="tab1" class="tab_content">
                                            <div class="widget  span12 clearfix">
                                                <div class="widget-header">
                                                    <span><i class="icon-road"></i> Select Product</span>
                                                </div>
                                                <!-- End widget-header -->
                                                <div class="widget-content">
                                                    <!-- CartZone-->
                                                    <div class="CartZone">
                                                        <img src="images/icon/bin.png" alt="bin" /> Drop Images To
                                                        Add Cart
                                                    </div>
                                                    <br>
                                                    <!-- Title Box-->
                                                    <div class="boxtitle">
                                                        <span class="ico gray hand_point"></span> Drag images ,Drop
                                                        CartZone to AddCart
                                                    </div>
                                                    <!-- Categories List -->
                                                    <div>
                                                        <label>Select Categories<small></small></label>
                                                        <div>
                                                            <select id="Categories" data-placeholder="Choose a Categories..."
                                                                    class="chzn-select validate[required]" tabindex="2">
                                                            <c:forEach items="${Categories}" var="s">
                                                                <option value="${s.getCatid()}">${s.getCatname()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <br />                                                    
                                                <!-- Product List -->    
                                                <div class="section" style="height: 220px; overflow-x: auto;">
                                                    <ul id="sortable" class="clearfix ProductList">



                                                    </ul>
                                                </div>
                                            </div>
                                            <!--  end widget-content -->
                                        </div>
                                        <!-- widget  span12 clearfix-->


                                    </div>
                                    <!--tab1-->
                                    <div id="tab2" class="tab_content">
                                        <form id="validation_demo" method="post" action="Controller">
                                            <input type="hidden" name="Action" id="Action"
                                                   value="SaveTrade" class="validate[required] medium" />
                                                   <input type="hidden" name="SubAction" id="SubAction" value="<%if (request.getParameter("uid") != null) {
                                                    out.print("Update");
                                                }%>" class="validate[required] medium" />      
                                            <div class="section ">
                                                <div class="span2 numericonly">
                                                    <label> Order ID<small>Order Identity Number</small></label>
                                                    <div>
                                                        <input type="text" name="orderid" id="orderid"
                                                               readonly="readonly" value="<c:out value="${Trade.getOrder_id()}"/>" class="validate[required] medium" />
                                                    </div>
                                                </div>
                                                <div>
                                                    <label>Date<small>Transection Date</small></label>
                                                    <div>
                                                        <input type="text" id="birthday"
                                                               class="datepicker  validate[required]" value="<c:out value="${Trade.getOrder_date()}"/>" name="Orderdate" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section">
                                                <table class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>ItemNAme</th>
                                                            <th>Qty</th>
                                                            <th>Rate</th>
                                                            <th>GrossTotal</th>
                                                            <th>Tax</th>
                                                            <th>Total</th>
                                                            <th>Action</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody id="ItemList">
                                                        <!-- Item List -->

                                                    </tbody>
                                                </table>                                                                         

                                            </div>
                                            <div style="width: 475px" class="span6">
                                                <table style="margin-top: 60px;" class="table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                    <h1>Rules & Condition ...</h1>
                                                    </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody >
                                                        <tr>
                                                            <td>1. if product is defected return within 2-3 days</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2. once order delivered you can not change in it.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3. order delivered after payment done so please after order first done payment.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4. if product is defected return within 2-3 days</td>
                                                        </tr>
                                                        <tr>
                                                            <td>5. once order delivered you can not change in it.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6. order delivered after payment done so please after order first done payment.</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="section span6" style="margin-top: 15px;">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Gross Total</th>
                                                            <th id="T_GrossAll"><c:out value="${Trade.getT_gross()}"/>
                                                                <input type='hidden' name='T_GrossAll' value='<c:out value="${Trade.getT_gross()}"/>'/>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th>Tax Total</th>
                                                            <th id="T_TaxAll"><c:out value="${Trade.getT_tax()}"/>
                                                                <input type='hidden' name='T_TaxAll' value='<c:out value="${Trade.getT_tax()}"/>'/>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th>Discount</th>
                                                            <th id="Discount">0</th>
                                                        </tr>
                                                    </thead>
                                                </table>                             
                                            </div>
                                            <div class="section">
                                                <label style="margin-left:50px"> Coupan Code<small>Special Coupan</small></label>
                                                <div style="margin-left:550px;">
                                                    <input type="text" name="coupan" id="coupan" class=" medium" />
                                                    <div>
                                                        <a class="uibutton">Applay</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="width: 475px" class="span6"></div>
                                            <div class="section span6">
                                                <div class="span6"><h1>Total Amount:</h1></div>
                                                <div class="span6"><h3 id="T_AmountAll"><c:out value="${Trade.getTotal()+Trade.getDiscount()}"/>
                                                        <input type='hidden' name='T_AmountAll' value='<c:out value="${Trade.getTotal()+Trade.getDiscount()}"/>'/>
                                                    </h3></div>
                                            </div>
                                            <div class="section">
                                                <div>
                                                    <a class="uibutton submit_form">submitForm</a>
                                                </div>
                                            </div>
                                        </form>
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


<script>
    jQuery(document).ready(function() {
        jQuery("#demovalidation").validationEngine({
            prettySelect : true,
            useSuffix: "_chzn"
        });
        //For update Set 2nd tab Default    
    <c:if test="${Trade.getTotal()>0 }">
            $('#tab2').attr("style","display: block;");
            $('#tab1').attr("style","display: none;");
            $('#tablink1').removeAttr("class");
            $('#tablink2').attr("class","active");
    </c:if>
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



<script>
    jQuery(document).ready(function() {
        // Drag & Drop  Delete images 
        $('.CartZone').droppable({
            hoverClass	: 'CartZoneover',
            activeClass	: 'CartZonedragging',
            tolerance		: 'pointer',
            drop				:  function(event,ui){	
                var name =ui.draggable.imgdata(0);  // Exampel value
                AddCart(ui.draggable);
            }
        });      
    });

    var Count=0;
    <c:if test="${Trade.getTotal()>0 }">
        <c:forEach items="${Trade.getOrder()}" var="s">
            Ttax=(parseFloat(${s.getTGross()})*parseFloat(${s.getTaxPer()}))/100;
            $("#ItemList").append("<tr id='TRProduct"+Count+"'><td id='TDProduct'>${s.getItemName()}<input type='hidden' id='ProductID' name='mygrid' value='${s.getItemID()}'/></td>         <td id='TDProductQty'><input type='text' id='ProductQty' class='small' onchange='updateQty(\"TRProduct"+Count+"\");' name='mygrid' value='${s.getQty()}'/></td>     <td id='TDProductRate'>${s.getRate()}</td>         <td id='TDGrossTotal'>${s.getTGross()}<input type='hidden' id='GrossTotal' value='${s.getTGross()}'/></td>          <td id='TDProductTax'>${s.getTaxPer()}<input type='hidden' id='ProductTax' value='"+Ttax+"'/></td>       <td id='TDTotal'>${s.getTotal()}<input type='hidden' id='Total' value='${s.getTotal()}'/></td>            <td id='TDAction'><img src='images/core/fancy_close.png' id='"+Count+"' onclick='RemoveItem(\"TRProduct"+Count+"\");' /></td></tr>");
            Count++;   
        </c:forEach>
    </c:if>
        function AddCart(name){
            flag=0;
            T_GrossAll=parseFloat($('#T_GrossAll').text());
            T_TaxAll=parseFloat($('#T_TaxAll').text());
            t_AmountAll=parseFloat($('#T_AmountAll').text());
            $('#ItemList').find('#ProductID').each(function(){
                if($(this).val()==name.imgdata(0)){
                    path=$(this).parent().parent();
			
                    path.find('#ProductQty').attr("value",parseFloat(path.find('#ProductQty').val())+1);
			
                    G_Total=parseFloat(path.find('#ProductQty').val())*parseFloat(path.find('#TDProductRate').text());
                    T_GrossAll=parseFloat($('#T_GrossAll').text())-parseFloat(path.find('#GrossTotal').val())+G_Total;
                    path.find('#TDGrossTotal').html(G_Total+"<input type='hidden' id='GrossTotal' value='"+G_Total+"'/>");
			
                    Tax=parseFloat(path.find('#TDProductTax').text());
                    T_Tax=(G_Total*Tax)/100;
                    T_TaxAll=parseFloat($('#T_TaxAll').text())-parseFloat(path.find('#ProductTax').val())+T_Tax;
                    path.find('#TDProductTax').html(Tax+"<input type='hidden' id='ProductTax' value='"+T_Tax+"'/>");
			
                    Total=G_Total+T_Tax;
                    t_AmountAll=parseFloat($('#T_AmountAll').text())-parseFloat(path.find('#Total').val())+Total;
                    path.find('#TDTotal').html(Total+"<input type='hidden' id='Total' value='"+Total+"'/>");
                    flag=1;
                }
            });
            if(flag==0){
                Qty=1;
                Rate=name.imgdata(2);
                Tax=name.imgdata(3);
                G_Total=Qty*Rate;
                T_Tax=(G_Total*Tax)/100;
                Total=G_Total+T_Tax;
                T_GrossAll=parseFloat($('#T_GrossAll').text())+G_Total;
                T_TaxAll=parseFloat($('#T_TaxAll').text())+T_Tax;
                t_AmountAll=parseFloat($('#T_AmountAll').text())+Total;
                $("#ItemList").append("<tr id='TRProduct"+Count+"'><td id='TDProduct'>"+ name.imgdata(1) +"<input type='hidden' id='ProductID' name='mygrid' value='" + name.imgdata(0) + "'/></td>         <td id='TDProductQty'><input type='text' id='ProductQty' class='small' onchange='updateQty(\"TRProduct"+Count+"\");' name='mygrid' value='"+Qty+"'/></td>     <td id='TDProductRate'>"+Rate+"</td>         <td id='TDGrossTotal'>"+G_Total+"<input type='hidden' id='GrossTotal' value='"+G_Total+"'/></td>          <td id='TDProductTax'>"+Tax+"<input type='hidden' id='ProductTax' value='"+T_Tax+"'/></td>       <td id='TDTotal'>"+Total+"<input type='hidden' id='Total' value='"+Total+"'/></td>            <td id='TDAction'><img src='images/core/fancy_close.png' id='"+Count+"' onclick='RemoveItem(\"TRProduct"+Count+"\");' /></td></tr>");
                Count+=1;
            }
        
            $('#T_GrossAll').html(T_GrossAll);
            $('#T_TaxAll').html(T_TaxAll);
            $('#T_AmountAll').html(t_AmountAll);
            alertMessage("error","Order ADD!!!");
        }

        function updateQty(ProductQty){
            path=$('#'+ProductQty);
	
            path.find('#ProductQty').attr("value",parseFloat(path.find('#ProductQty').val()));
		
            G_Total=parseFloat(path.find('#ProductQty').val())*parseFloat(path.find('#TDProductRate').text());
            T_GrossAll=parseFloat($('#T_GrossAll').text())-parseFloat(path.find('#GrossTotal').val())+G_Total;
            path.find('#TDGrossTotal').html(G_Total+"<input type='hidden' id='GrossTotal' value='"+G_Total+"'/>");
			
            Tax=parseFloat(path.find('#TDProductTax').text());
            T_Tax=(G_Total*Tax)/100;
            T_TaxAll=parseFloat($('#T_TaxAll').text())-parseFloat(path.find('#ProductTax').val())+T_Tax;
            path.find('#TDProductTax').html(Tax+"<input type='hidden' id='ProductTax' value='"+T_Tax+"'/>");
			
            Total=G_Total+T_Tax;
            t_AmountAll=parseFloat($('#T_AmountAll').text())-parseFloat(path.find('#Total').val())+Total;
            path.find('#TDTotal').html(Total+"<input type='hidden' id='Total' value='"+Total+"'/>");
        
            $('#T_GrossAll').html(T_GrossAll);
            $('#T_TaxAll').html(T_TaxAll);
            $('#T_AmountAll').html(t_AmountAll);
            alertMessage("error","Order Update!!!");
        }

        function RemoveItem(ProductQty){
            path=$('#'+ProductQty);
            G_Total=parseFloat(path.find('#ProductQty').val())*parseFloat(path.find('#TDProductRate').text());
            Tax=parseFloat(path.find('#TDProductTax').text());
            T_Tax=(G_Total*Tax)/100;
            Total=G_Total+T_Tax;
            T_GrossAll=parseFloat($('#T_GrossAll').text())-G_Total;
            T_TaxAll=parseFloat($('#T_TaxAll').text())-T_Tax;
            t_AmountAll=parseFloat($('#T_AmountAll').text())-Total;
        
            $('#T_GrossAll').html(T_GrossAll);
            $('#T_TaxAll').html(T_TaxAll);
            $('#T_AmountAll').html(t_AmountAll);
            $('#'+ProductQty).remove();
            alertMessage("error","Order Deleted!!!");
        }
    
        //Getting All Product
        $.ajax({url:"Controller?Action=CallAjax&SubAction=GetProduct&id="+$('#Categories').val(),success:function(result){
                $(".ProductList").html(result);
            }}); 
        $('#Categories').change( function() {
            $.ajax({url:"Controller?Action=CallAjax&SubAction=GetProduct&id="+$(this).val(),success:function(result){
                    $(".ProductList").html(result);
                }});
        });
    
   
        //$(".CartZone").append('<img src="'+name.find('img').attr("src")+'" title="Drag Image to delete" />');
</script>
