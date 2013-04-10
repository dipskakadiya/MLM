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
								<li><a href="#tab1"> Add to Cart<img
										src="images/icon/new.gif" width="20" height="9" /></a></li>
								<li><a href="#tab2"> View Cart <img
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

											<div>
												<label>Select Country<small></small></label>
												<div>
													<select data-placeholder="Choose a Country..."
														class="chzn-select validate[required]" tabindex="2">
														<option value=""></option>
														<option value="United States">United States</option>
														<option value="Zambia">Zambia</option>
														<option value="Zimbabwe">Zimbabwe</option>
													</select>
												</div>
											</div>
											<br />
											<div class="section" style="height: 220px; overflow-x: auto;">
												<ul id="sortable" class="clearfix">
													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/07.jpg" title="Drag Image to delete" />
															<div class="picTitle">Laptop</div>
															<ul class="dataImg">
																<li>1</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/30.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00252.jpg</div>
															<ul class="dataImg">
																<li>2</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/06.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00253.jpg</div>
															<ul class="dataImg">
																<li>3</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/02.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00254.jpg</div>
															<ul class="dataImg">
																<li>4</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>
													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/07.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00251.jpg</div>
															<ul class="dataImg">
																<li>5</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/30.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00252.jpg</div>
															<ul class="dataImg">
																<li>6</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/06.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00253.jpg</div>
															<ul class="dataImg">
																<li>7</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

													<li class="albumImage">
														<div class="picHolder">
															<span class="image_highlight"></span>
															<img src="exampic/02.jpg" title="Drag Image to delete" />
															<div class="picTitle">DSC00254.jpg</div>
															<ul class="dataImg">
																<li>8</li><!-- product ID -->
																<li>Laptop</li><!-- Product Name -->
																<li>250</li><!-- Sales Rate -->
																<li>2</li><!-- Tax on Item -->
																<li>23</li><!-- Stock -->
															</ul>
														</div>
													</li>

												</ul>
											</div>
										</div>
										<!--  end widget-content -->
									</div>
									<!-- widget  span12 clearfix-->


								</div>
								<!--tab1-->
								<div id="tab2" class="tab_content">
									<form id="validation_demo" action="#">

										<div class="section ">
											<div class="span2 numericonly">
												<label> Order ID<small>Order Identity Number</small></label>
												<div>
													<input type="text" name="menu" id="menu"
														readonly="readonly" class="validate[required] medium" />
												</div>
											</div>
											<div>
												<label>Date<small>Transection Date</small></label>
												<div>
													<input type="text" id="birthday"
														class="datepicker  validate[required]" name="birthday" />
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
										<div class="section">
											<label> Coupan Code<small>Special Coupan</small></label>
											<div>
												<input type="text" name="Remark" id="Remark"
													class="validate[required] medium" />
											</div>
											<div>
												<a class="uibutton">Applay</a>
											</div>
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


<
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
function AddCart(name){
	flag=0;
	$('#ItemList').find('#ProductID').each(function(){
		if($(this).val()==name.imgdata(0)){
			path=$(this).parent().parent();
			
			path.find('#ProductQty').attr("value",parseFloat(path.find('#ProductQty').val())+1);
			
			G_Total=parseFloat(path.find('#ProductQty').val())*parseFloat(path.find('#ProductRate').val());
			path.find('#TDGrossTotal').html(G_Total+"<input type='hidden' name='mygrid' id='GrossTotal' value='"+G_Total+"'/>");
			
			Tax=parseFloat(path.find('#TDProductTax').text());
			T_Tax=(G_Total*Tax)/100;
			path.find('#TDProductTax').html(Tax+"<input type='hidden' name='mygrid' id='ProductTax' value='"+T_Tax+"'/>");
			
			Total=G_Total+T_Tax;
			path.find('#TDTotal').html(Total+"<input type='hidden' id='Total' name='mygrid' value='"+Total+"'/>");
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
        $("#ItemList").append("<tr id='TRProduct"+Count+"'><td id='TDProduct'>"+ name.imgdata(1) +"<input type='hidden' id='ProductID' name='mygrid' value='" + name.imgdata(0) + "'/></td>         <td id='TDProductQty'><input type='text' id='ProductQty' class='small' onchange='updateQty(\"TRProduct"+Count+"\");' name='mygrid' value='"+Qty+"'/></td>     <td id='TDProductRate'>"+Rate+"<input type='hidden' name='mygrid' id='ProductRate' value='"+Rate+"'/></td>         <td id='TDGrossTotal'>"+G_Total+"<input type='hidden' name='mygrid' id='GrossTotal' value='"+G_Total+"'/></td>          <td id='TDProductTax'>"+Tax+"<input type='hidden' name='mygrid' id='ProductTax' value='"+T_Tax+"'/></td>       <td id='TDTotal'>"+Total+"<input type='hidden' id='Total' name='mygrid' value='"+Total+"'/></td>            <td id='TDAction'><img src='images/core/fancy_close.png' id='"+Count+"' onclick='RemoveItem(\"TRProduct"+Count+"\");' /></td></tr>");
        Count+=1;
    }
}

function updateQty(ProductQty){
	path=$('#'+ProductQty);
	
	path.find('#ProductQty').attr("value",parseFloat(path.find('#ProductQty').val()));
		
	G_Total=parseFloat(path.find('#ProductQty').val())*parseFloat(path.find('#ProductRate').val());
	path.find('#TDGrossTotal').html(G_Total+"<input type='hidden' name='mygrid' id='GrossTotal' value='"+G_Total+"'/>");
	
	Tax=parseFloat(path.find('#TDProductTax').text());
	T_Tax=(G_Total*Tax)/100;
	path.find('#TDProductTax').html(Tax+"<input type='hidden' name='mygrid' id='ProductTax' value='"+T_Tax+"'/>");
	
	Total=G_Total+T_Tax;
	path.find('#TDTotal').html(Total+"<input type='hidden' id='Total' name='mygrid' value='"+Total+"'/>");	
}

function RemoveItem(ProductQty){
	$('#'+ProductQty).remove();
}


//$(".CartZone").append('<img src="'+name.find('img').attr("src")+'" title="Drag Image to delete" />');
</script>
