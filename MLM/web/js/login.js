$(document).ready(function () {
	onfocus();
	$('#password').keypress(function(e) {
		if(e.which == 13) {
			jQuery(this).blur();
			jQuery('#but_login').focus().click();
		}
	});
	// Hide All  Alert Message Before
	$('.alertMessage').live('click',function(){
		alertHide();
	});
	// Check box  iphone Style
	$(".on_off_checkbox").iphoneStyle();
	// Tooltip
	$('.tip a ').tipsy({gravity: 'sw'});
	// Loading Login Animation
	$('#login').show().animate({   opacity: 1 }, 2000);
	$('.logo').show().animate({   opacity: 1,top: '32%'}, 800,function(){			
		 $('.logo').show().delay(1200).animate({   opacity: 1,top: '1%' }, 300,function(){
				  	$('.formLogin').animate({   opacity: 1,left: '0' }, 300);
				  	$('.userbox').animate({ opacity: 0 }, 200).hide();
		  });		
	});
	// Login Click
	$('#but_login').click(function(e){				
		  if(document.formLogin.username.value == "" || document.formLogin.password.value == ""){
			  alertMessage("error","Please Input Username / Password");
			  $('.inner').jrumble({ x: 4,y: 0,rotation: 0 });	
			  $('.inner').trigger('startRumble');
			  setTimeout('$(".inner").trigger("stopRumble")',500);
			  return false;
		  }		
		 alertHide();
		 loading('Checking',1);
                 $.post("LoginController", {
                     username: $("input[name='username']").val(),
                     password: $("input[name='password']").val(),
                     remember: $("input[name='remember']").attr("checked")? true : false
                 },
                 function(response) {
                     if($.trim(response) == 'null') {
                        setTimeout( "unloading()", 2000 );
                        setTimeout( "Login()", 2500 );
                     }else{
                        setTimeout( "unloading()",10 );
                        alertMessage("error",response);
                     }
                 });
	});	
});			
	  //Login function
	  function Login(){
                  
		  $("#login").animate({   opacity: 1,top: '49%' }, 200,function(){
                            
			   $('.userbox').show().animate({ opacity: 1 }, 500);
                                
				$("#login").animate({   opacity: 0,top: '60%' }, 500,function(){
                                               // console.log("Loader started");
						$(this).fadeOut(200,function(){
								$(".text_success").slideDown();
								$("#successLogin").animate({opacity: 1,height: "200px"},500);   			     
						});							  
				 })	
		   })	
		  setTimeout( "window.location.href='Dashboard.jsp'", 3000 );
	  }
	 //Hidden All  Alert Message Before
	  function alertHide(){
				 $('#alertMessage').each(function(index) {	 
						$(this).attr("id","alertMessage"+index).animate({ opacity: 0,right: '30'}, 500,function(){ $(this).remove(); });	
				});	
	  }
	  // Create Alert Message Box
	  function alertMessage(type,str){
				//Hidden All  Alert Message Before
				alertHide();
				// type is a success ,info, warning ,error
				$('body').append('<div id="alertMessage" class="alertMessage '+type+'">');
				$.alertbox=$('#alertMessage').html(str);
				$.alertbox.show().animate({ opacity: 1,right: '10' },500);
	  }	  
	  function onfocus(){
			if($(window).width()>480) {					  
					$('.tip input').tipsy({ trigger: 'focus', gravity: 'w' ,live: true});
			}else{
				  $('.tip input').tipsy("hide");
			}
	  }
	  // Loading 
	  function loading(name,overlay) { 
			$('body').append('<div id="overlay"></div><div id="preloader">'+name+'..</div>');
					if(overlay==1){
					  		$('#overlay').css('opacity',0.4).fadeIn(400,function(){  $('#preloader').fadeIn(400);	});
					  return  false;
			  		 }
			$('#preloader').show();	  
	   }
	   // Unloading 
	  function unloading() { 
			$('#preloader').fadeOut(400,function(){ $('#overlay').fadeOut(); $.fancybox.close(); }).remove();
	   }