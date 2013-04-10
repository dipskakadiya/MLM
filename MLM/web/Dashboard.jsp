<!DOCTYPE html>
<html lang="en">
<head>

<title>Dashboard</title>
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
						<span><i class="icon-home"></i> Dashboard manager </span>
					</div>
					<!-- End widget-header -->
					<div class="widget-content"></div>
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