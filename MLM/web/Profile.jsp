<%@page import="com.mlm.bean.Member"%>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from zicedemo.com/1.7/table.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:26:19 GMT -->
<head>
    <% Member mb=new Member();
    mb=(Member) request.getAttribute("member");
   System.out.println(mb.getAddress());
%>
        <meta charset="utf-8">
        <title>Ziceinclude&trade; admin version 1.7 online</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <jsp:include page="Css_Jq.jsp"></jsp:include> 
		</head>        
        <body>        
        
            <!-- Header -->
            <jsp:include page="Header.jsp"></jsp:include>
           <!-- End Header -->

              <!-- left_menu -->
              <jsp:include page="Left_Menu.jsp"></jsp:include>
                             
  <div id="content" >
                <div class="inner">
                                    
                    <div class="row-fluid">
                          <div class="span12 clearfix">
                              <div class="logo"></div>
                              <ul id="shortcut" class="clearfix">
                                    <li> <a href="#" title="Back To home"> <img src="images/icon/shortcut/home.png" alt="home"/><strong>Home</strong> </a> </li>
                                    <li> <a href="#" title="Website Graph"> <img src="images/icon/shortcut/graph.png" alt="graph"/><strong>Graph</strong> </a> </li>
                                    <li> <a href="#" title="Setting" > <img src="images/icon/shortcut/setting.png" alt="setting" /><strong>Setting</strong></a> </li> 
                                    <li> <a href="#" title="Messages"> <img src="images/icon/shortcut/mail.png" alt="messages" /><strong>Message</strong></a><div class="notification" >10</div></li>
                              </ul>
                          </div>
                    </div>
                    
                    <div class="row-fluid">
                    
                    		<!-- Widget -->
                            <div class="widget  span12 clearfix">
                            
                                <div class="widget-header">
                                    <span><i class="icon-bookmark"></i>  Profile Setting</span>
                                </div><!-- End widget-header -->	
                                
                                <div class="widget-content">    
        
                                <div class="boxtitle min">Take a picture with Webcam</div>
                                <form id="validation_demo" action="#"> 
                                <div class="row-fluid">
                                    <div class="span4">
                                            <div class="profileSetting" >
                                                    <div class="avartar"><img src="images/avartarB.jpg" width="180" height="180" alt="avatar" /></div>
                                                   <div class="avartar">
                                                   <input type="file" class="fileupload" />
                                                   <p align="center"><span> OR </span>Take a picture with <a class="takeWebcam">Webcam</a></p>
                                                   </div>
                                            </div>
                                            <hr/>
                                    </div>
        
                                    <div class="span8">
                                            <div class="section webcam">
                                                    <label> Take a picture<small>With  webcam</small></label>   
                                                    <div> 
                                                                  <div id="screen"></div>
                                                                  <div class="buttonPane">
                                                                      <a id="takeButton" class="uibutton">Take Me</a> <a id="closeButton" class="uibutton special">Close</a>
                                                                  </div>
                                                                  <div class="buttonPane hideme">
                                                                      <a id="uploadAvatar" class="uibutton confirm">Upload Avartar</a> <a id="retakeButton" class="uibutton special">Retake</a> 
                                                                </div>
                                                    </div>
                                            </div>
        
                                            <div class="section ">
                                                    <label> Full name<small></small></label>   
                                                    <div> 
                                                        <% out.print(mb.getFirstname());%>
                                                    </div>
                                            </div>
                                            <div class="section">
                                                        <label> UserName  <small></small></label>
                                                    <div>
                                                   	<% out.print(mb.getLastname());%>
																					                                                    
                                                    </div>
                                                   
                                            </div>
                                            
                                             <div class="section ">
                                                    <label> Birth Day<small></small></label>   
                                                    <div> 
                                                                     <%out.print(mb.getBirthdate());%>
                                                                                  	                        </div>
                                            </div>
                                            <div class="section ">
                                                    <label>gender<small></small></label>   
                                                    <div> 
                                                      <div>
                                                          <% out.print(mb.isOptgender());%>
                                                      </div>
                                                    </div>
                                            </div>
                                            <div class="section ">
                                                    <label> Email<small></small></label>   
                                                    <div> 
                                                        <%out.print(mb.getEmail());%>
                                                                                  	                        </div>
                                            </div>
                                             <div class="section ">
                                                    <label> Address<small></small></label>   
                                                    <div> 
                                                                   <%out.print(mb.getAddress());%>
                                                                                  	                        </div>
                                            </div>
                                             <div class="section ">
                                                    <label> Contact Number<small></small></label>   
                                                    <div> 
                                                                      <% out.print(mb.getMobile()); %>
                                                                                  	                        </div>
                                            </div>
                                            
                                    </div>
        
                                    </div><!-- row-fluid -->
                                    </form>

                                </div><!--  end widget-content -->
                            </div><!-- widget  span12 clearfix-->

                    </div><!-- row-fluid -->
                    <div id="footer"> &copy; Copyright 2012 <span class="tip"><a  href="#" title="Zice Admin" >Your Company Name</a> </span> </div>

                </div> <!--// End inner -->
              </div> <!--// End content --> 
            
           </body>

<!-- Mirrored from zicedemo.com/1.7/table.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:26:19 GMT -->
</html>