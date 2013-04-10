<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from zicedemo.com/1.7/ by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:10:25 GMT -->
<head>
        <meta charset="utf-8">
        <title>MLM </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link type="text/css" rel="stylesheet" href="components/bootstrap/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/zice.style.css"/>
        <style type="text/css">
        html {
            background-image: none;
        }
		body{
			background-position:0 0;
			}
        label.iPhoneCheckLabelOn span {
            padding-left:0px
        }
        #versionBar {
            background-color:#212121;
            position:fixed;
            width:100%;
            height:35px;
            bottom:0;
            left:0;
            text-align:center;
            line-height:35px;
            z-index:11;
            -webkit-box-shadow: black 0px 10px 10px -10px inset;
            -moz-box-shadow: black 0px 10px 10px -10px inset;
            box-shadow: black 0px 10px 10px -10px inset;
        }
        .copyright{
            text-align:center; font-size:10px; color:#CCC;
        }
        .copyright a{
            color:#A31F1A; text-decoration:none
        }    
        </style>
        </head>
        <body >
         
        <div id="successLogin"></div>
        <div class="text_success"><img src="images/loadder/loader_green.gif"  alt="ziceAdmin" /><span>Please wait</span></div>
        
        <div id="login" >
          <div class="ribbon"></div>
          <div class="inner clearfix">
          <div class="logo" ><img src="images/logo/logo_admin.png" alt="ziceAdmin" /></div>
          <div class="formLogin">
         <form name="formLogin"  id="formLogin" method="post">
      
                <div class="tip">
                      <input name="username" type="text"  id="username_id"  title="Username"   />
                </div>
                <div class="tip">
                      <input name="password" type="password" id="password"   title="Password"  />
                </div>
      
                <div class="loginButton">
                  <div style="float:left; margin-left:-9px;">
                      <input type="checkbox" id="on_off" name="remember" class="on_off_checkbox"  value="1"  />
                      <span class="f_help">Remember me</span>
                  </div>
                  <div class=" pull-right" style="margin-right:-8px;">
                      <div class="btn-group">
                        <button type="button" class="btn" id="but_login">Login</button>
                        <button type="button" class="btn" id="forgetpass"> Forget Pass</button>
                      </div>
        
                  </div>
                  <div class="clear"></div>
                </div>
      
          </form>
          </div>
        </div>
          <div class="shadow"></div>
        </div>
        
        <!--Login div-->
        <div class="clear"></div>
        <div id="versionBar" >
          <div class="copyright" > &copy; Copyright 2012  All Rights Reserved <span class="tip"><a  href="#" title="Zice Admin" >Your company</a> </span> </div>
          <!-- // copyright-->
        </div>
        
        <!-- Link JScript-->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="components/ui/jquery.ui.min.js"></script>
        <script type="text/javascript" src="components/form/form.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
		<script type="text/javascript" >
        $(document).ready(function () {	 
                $('#createacc').click(function(e){
                    $('#login').animate({   height: 350, 'margin-top': '-200px' }, 300);	
                    $('.formLogin').animate({   height: 240 }, 300);
                    $('#createaccPage').fadeIn();
                    $('#formLogin').hide();
                });
                $('#backLogin').click(function(e){
                    $('#login').animate({   height: 254, 'margin-top': '-148px' }, 300);	
                    $('.formLogin').animate({   height: 150 }, 300);
                    $('#formLogin').fadeIn();
                    $('#createaccPage').hide();
                });			
        });		
        </script>
        </body>
        
<!-- Mirrored from zicedemo.com/1.7/ by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:10:36 GMT -->
</html>