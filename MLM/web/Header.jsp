<!-- Header -->
<div id="header">
	<ul id="account_info" class="pull-right">
		<li><img src="images/avatar.png" alt="Online" /></li>
		<li class="setting">Welcome, <b class="red"><%=session.getAttribute("sessionUserName")%>${sessionUserName}</b>
			<ul class="subnav">
				<li><a href="Profile.jsp">Profile</a></li>
				<li><a href="#">Discussion Board</a></li>
				<li><a href="#">Reset password</a></li>
				<!-- br class="clearfix"/-->
			</ul>
		</li>
		<li class="logout" title="Disconnect">Logout</li>
	</ul>
</div>
<!-- End Header -->