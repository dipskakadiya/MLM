/*
Zice admin  v1.7
Release Date: Jan 6, 2012
*/
$.fn.imgdata = function(key){
	return this.find('.dataImg li:eq('+key+')').text();
}
$.fn.hdata = function(key){
	return this.find('.dataSet li:eq('+key+')').text();
}
var buttonActions = {
	  'close_windows':function(){
		  $.fancybox.close(); 
		  ResetForm();
	}	
}

$(document).ready(function(){	
	// Main menu 
	$('ul#main_menu ul').hide();
	$('ul#main_menu li ').hover( function () {
		  var parent = $(this).parents('ul').attr('id');
		   var parents = $(this).find('ul');
		  $('#' + parent + ' ul:visible').hide();
		   $(parents).show();
		  $('#' + parent + ' ul:visible li:first').append('<div class="arr"><span></span></div>');
		  $('#' + parent + ' ul:visible ').live({  mouseleave: function(){  $(this).hide(); } });
	});
	// Fancybox 
	$(".pop_box").fancybox({ 'showCloseButton': false, 'hideOnOverlayClick'	:	false });	
	$(".pop_img").fancybox({  'showCloseButton': true,'centerOnScroll' : true, 'overlayOpacity' : 0.8,'padding' : 0 });
	$('.albumImage').dblclick(function(){
		  $("a[rel=glr]").fancybox({  'showCloseButton': true,'centerOnScroll' : true, 'overlayOpacity' : 0.8,'padding' : 0 });
		  $(this).find('a').trigger('click');
	})
	// NewsUpdate
	$('#news_update').vTicker({ 
		speed: 1000,
		pause: 5000,
		animation: 'fade',
		mousePause: true,
		showItems: 3
	});
	// Tabs
	$("ul.tabs li").fadeIn(400); 
	$("ul.tabs li:first").addClass("active").fadeIn(400); 
	$(".tab_content:first").fadeIn(); 
	$("ul.tabs li").live('click',function() {
		  $("ul.tabs li").removeClass("active");						   
		  $(this).addClass("active");  
		  var activeTab = $(this).find("a").attr("href"); 
		  $('.tab_content').fadeOut();		
		  $(activeTab).delay(400).fadeIn();		
		  ResetForm();
		  return false;
	});
  //DataTable
  $('#dataTable').dataTable( {
	  "sDom": "<'row-fluid tb-head'<'span6'f><'span6'<'pull-right'l>>r>t<'row-fluid tb-foot'<'span4'i><'span8'p>>",
	  "bJQueryUI": false,
	  "iDisplayLength": 10,
	  "sPaginationType": "bootstrap",
	  "oLanguage": {
		  "sLengthMenu": "_MENU_",
		  "sSearch": "Search"
	  }
  });
	$('.data_table3').dataTable({
	  "sDom": "<'row-fluid tb-head'<'span6'f><'span6'<'pull-right'Cl>>r>t<'row-fluid tb-foot'<'span4'i><'span8'p>>",
	  "bJQueryUI": false,
	  "iDisplayLength": 10,
	  "sPaginationType": "bootstrap",
	  "oLanguage": {
		  "sLengthMenu": "_MENU_",
		  "sSearch": "Search"
	  }
	});
	
	// WYSIWYG Editor
	$("#editor,#editor2").cleditor();	
	// Form validationEngine
	$('form#validation').validationEngine();		
	$('form#validation_demo').validationEngine();	
	// Input filter
	$('.numericonly input').autotab_magic().autotab_filter('numeric');
	$('.textonly input').autotab_magic().autotab_filter('text');
	$('.alphaonly input').autotab_magic().autotab_filter('alpha');
	$('.regexonly input').autotab_magic().autotab_filter({ format: 'custom', pattern: '[^0-9\.]' });
	$('.alluppercase input').autotab_magic().autotab_filter({ format: 'alphanumeric', uppercase: true });
	// Tags Input
	$('#tags_input').tagsInput({width:'auto'});
});	

$(function() {		
	LResize();	
	$(window).resize(function(){LResize(); Processgraph(); });
    $(window).scroll(function (){ scrollmenu(); });
		
	  //Close_windows
	  $('.butAcc').live('click',function(e){				   
			  if(buttonActions[this.id]){
				  buttonActions[this.id].call(this);
			  }
			  e.preventDefault();
	  });
	  // Hide All  Alert Message Before
	  $('.alertMessage').live('click',function(){
		  alertHide();
	  });
	 //Exampel ui slider element
	  $( "#slider-range-min" ).slider({
			range: "min",
			value: 212,
			min: 1,
			max: 700,
			slide: function( event, ui ) {
				$( "#amount" ).text( "$" + ui.value );
			}
		});
		$( "#amount" ).text( "$" + $( "#slider-range-min" ).slider( "value" ) );
		
		$( "#slider-range" ).slider({
			range: true,
			min: 0,
			max: 500,
			values: [ 75, 300 ],
			slide: function( event, ui ) {
				$( "#amount2" ).text( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
			}
		});
		$( "#amount2" ).text( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
		
		$( "#slider" ).slider({
			value:100,
			min: 0,
			max: 500,
			step: 50,
			slide: function( event, ui ) {
				$( "#amount3" ).text( "$" + ui.value );
			}
		});
	$( "#amount3" ).text( "$" + $( "#slider" ).slider( "value" ) );
	$( "#eq > span" ).each(function() {
		// read initial values from markup and remove that
		var value = parseInt( $( this ).text(), 10 );
		$( this ).empty().slider({
			value: value,
			range: "min",
			animate: true,
			orientation: "vertical"
		});
	});
	$( "#red, #green, #blue" ).slider({
		orientation: "horizontal",
		range: "min",
		max: 255,
		value: 127,
		slide: refreshSwatch,
		change: refreshSwatch
	});
	$( "#red" ).slider( "value", 190 );
	$( "#green" ).slider( "value", 221 );
	$( "#blue" ).slider( "value", 23 );
	  
	 //Autocomplete
		var availableTags = [
			"ActionScript","AppleScript","Asp","BASIC","C","C++","Clojure","COBOL","ColdFusion",
			"Erlang","Fortran","Groovy","Haskell","Java","JavaScript","Lisp","Perl","PHP","Python","Ruby","Scala","Scheme"
		];
		$( "#sAtcom" ).autocomplete({
			source: availableTags
		});
	  $('.searchAutocomplete').click(function() {
		 $('.searchText').toggle('slow', function() {
			// Animation complete.
		  });
	  });
	  
  	//Datepicker
	$("input.datepicker").datepicker({ 
		autoSize: true,
		appendText: '(dd-mm-yyyy)',
		dateFormat: 'dd-mm-yy'
	});
	$( "div.datepickerInline" ).datepicker({ 
		dateFormat: 'dd-mm-yy',
		numberOfMonths: 1
	});	
	$( "input.birthday" ).datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat:'yy-mm-dd'
    });
	//Datetimepicker
   $("#datetimepicker").datetimepicker();
   $('#timepicker').timepicker({});
   
	//Color picker 
	$('#colorPickerFlat').ColorPicker({flat: true ,color: '#a4d143'});
	//Color picker  on chang action
	$('#colorPicker').ColorPicker({
	  onChange: function (hsb, hex, rgb) { // Action on change
		  $('#colorPicker div').css('backgroundColor', '#' + hex); 
	  }
	});
	//Color picker  set color on value
	$('#colorpickerField').ColorPicker({
		onChange: function (hsb, hex, rgb,el) { // Action on change
			$('#colorpickerField,').val('#'+hex).css('backgroundColor', '#' + hex);
		}
	}).bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});

	//Button Click  Ajax Loading
	$('.loading').live('click',function() { 
		  var str=$(this).attr('title'),
		      	overlay=$(this).attr('rel'); 
		  		loading(str,overlay);
		 		setTimeout("unloading()",1500); 
	  });
	//Click Cancel Loading
	$('#preloader').live('click',function(){
			unloading();
	 });
	// Submit Form 
	$('a.submit_form').live('click',function(){
		  var form_id=$(this).parents('form').attr('id');
		  $("#"+form_id).submit();
	})	
	// Logout Click  
	$('.logout').live('click',function() { 
		  loading('Logout',1);
		  setTimeout("unloading()",1500);
                  
		  setTimeout( "window.location.href='Controller?Action=Logout'", 2000 );
	  });
	// Wizard Steps 
	 $('#wizard').smartWizard();
	// Tipsy Tootip
	  $('.tip a ').tipsy({gravity: 's',live: true});	
	  $('.ntip a ').tipsy({gravity: 'n',live: true});	
	  $('.wtip a ').tipsy({gravity: 'w',live: true});	
	  $('.etip a,.Base').tipsy({gravity: 'e',live: true});	
	  $('.netip a ').tipsy({gravity: 'ne',live: true});	
	  $('.nwtip a  ').tipsy({gravity: 'nw',live: true});	
	  $('.swtip a,.iconmenu li a ').tipsy({gravity: 'sw',live: true});	
	  $('.setip a ').tipsy({gravity: 'se',live: true});	
	  $('.wtip input ').tipsy({ trigger: 'focus', gravity: 'w',live: true });
	  $('.etip input').tipsy({ trigger: 'focus', gravity: 'e',live: true });
	  $('.iconBox, div.logout').tipsy({gravity: 'ne',live: true });	

	// Maskedinput 
        $.mask.definitions['~'] = "[+-]";
        $("#date").mask("99/99/9999",{completed:function(){ alert("completed!");}});
		$("#dateMasked").mask("99/99/9999",{completed:function(){ alert("completed!");}});
		$("#datepicker").datepicker().mask("99-99-9999");
        $("#phone").mask("(999) 999-9999");
        $("#phoneExt").mask("(999) 999-9999? x99999");
        $("#iphone").mask("+33 999 999 999");
        $("#tin").mask("99-9999999");
        $("#ssn").mask("999-99-9999");
        $("#product").mask("a*-999-a999", { placeholder: " " });
        $("#eyescript").mask("~9.99 ~9.99 999");
        $("#po").mask("PO: aaa-999-***");
		$("#pct").mask("99%",{completed:function(){ Processgraph();  }});

 function Processgraph(){
	var 	bar = $('.bar'), bw = bar.width(), percent = bar.find('.percent'), circle = bar.find('.circle'), ps =  percent.find('span'),
		cs = circle.find('span'), name = 'rotate';
			var t = $('#pct'), val = t.val();
			if(val){ 
				val = t.val().replace("%", "");
			if (val >=0 && val <= 100){
				var w = 100-val, pw = (bw*w)/100,
					pa = {  	width: w+'%' },
					cw = (bw-pw), ca = {	"left": cw }
				ps.animate(pa);
				cs.text(val+'%');
				circle.animate(ca, function(){
					circle.removeClass(name)
				}).addClass(name);	
			} else {
				alert('range: 0 - 100');
				t.val('');
			}
		}
	}
	
	// Rating Star
	$("#rating_star").rating_star({
			  rating_star_length: '10',
			  rating_initial_value: '7'
	 });
	$("#rating_star2").rating_star({
			  rating_star_length: '5',
			  rating_initial_value: '4'
	 });

	  // Profile webcam 
	  var camera = $('#camera'),screen =  $('#screen');	
	  webcam.set_api_url('avartarUpload.php');	
	  screen.html(  webcam.get_html(screen.width(), screen.height()));
	  var shootEnabled = false;
	  $(".takeWebcam").click(function(){
		  $(".webcam").show('blind');
		  return false;
	  });
	  $("#closeButton").click(function(){
		  $(".webcam").hide('blind');
		  return false;
	  });
	  $('#takeButton').click(function(){
		  if(!shootEnabled){
			  return false;
		  }
		  webcam.freeze();
		  togglePane()
		  return false;
	  });
	  $('#retakeButton').click(function(){
		  webcam.reset();
		  togglePane()
		  return false;
	  });	
	  $('#uploadAvatar').click(function(){
		  webcam.upload();
		  togglePane()
		  webcam.reset();
		  return false;
	  });
	  webcam.set_hook('onLoad',function(){
		  shootEnabled = true;
	  });
	  webcam.set_hook('onError',function(e){
		  screen.html(e);
	  });
	  function togglePane(){
		  var visible = $(' .buttonPane:visible:first');
		  var hidden = $(' .buttonPane:hidden:first');	
		  visible.fadeOut('fast',function(){
			  hidden.show();
		  });
	  }
	  
	  	// images  editor tranfer
		$('#reflect').click(function() {
				$('.animate').animate({"reflect": true});	 
		});
		$('#reflectX').click(function() {
				$('.animate').animate({"reflectX": true});	 
		});
		$('#reflectY').click(function() {
				$('.animate').animate({"reflectY": true});	 
		});
		$('#reflectXY').click(function() {
				$('.animate').animate({"reflectXY": true});	 
		});
		$('#reflectYX').click(function() {
				$('.animate').animate({"reflectYX": true});	 
		});
	  // Images  Crop			
	  $('#target').Jcrop({
			onChange: updateCoords,
			onSelect: updateCoords,
		},function(){
        var bounds = this.getBounds();
        boundx = bounds[0];
        boundy = bounds[1];
        jcrop_api = this;
			var  x1=(boundx -240)/2;
			var  y1=(boundy -180)/2;
			var  x2=(x1 +240);
			var  y2=(y1 +180);
		jcrop_api.animateTo([x1,y1,x2,y2]);
      });
	  function updateCoords(c){
		  $('#x').val(c.x);
		  $('#y').val(c.y);
		  $('#w').val(c.w);
		  $('#h').val(c.h);
	  };
	
	// Spinner options 
	var itemListspinner = [
		{url: "http://ejohn.org", title: "John Resig"},
		{url: "http://bassistance.de/", title: "J&ouml;rn Zaefferer"},
		{url: "http://snook.ca/jonathan/", title: "Jonathan Snook"},
		{url: "http://rdworth.org/", title: "Richard Worth"},
		{url: "http://www.paulbakaus.com/", title: "Paul Bakaus"},
		{url: "http://www.yehudakatz.com/", title: "Yehuda Katz"},
		{url: "http://www.azarask.in/", title: "Aza Raskin"},
		{url: "http://www.karlswedberg.com/", title: "Karl Swedberg"},
		{url: "http://scottjehl.com/", title: "Scott Jehl"},
		{url: "http://jdsharp.us/", title: "Jonathan Sharp"},
		{url: "http://www.kevinhoyt.org/", title: "Kevin Hoyt"},
		{url: "http://www.codylindley.com/", title: "Cody Lindley"},
		{url: "http://malsup.com/jquery/", title: "Mike Alsup"}
	];
	var optionspinner = {
		'sDec': {decimals:2},
		'sMinMax':{min: -100, max: 100 },
		'sStep': {stepping: 0.25},
		'sStep': {stepping: 0.25},
		'sCur': {currency: '$'},
		'sCur2': {currency: '$'}, 
        'sCur3': {currency: '$'},
		'sInline': {},
		'sLink': {
			init: function(e, ui) {
				for (var i=0; i<itemListspinner.length; i++) {
					ui.add('<a href="'+ itemListspinner[i].url +'" target="_blank">'+ itemListspinner[i].title +'</a>');
				}
			},
			format: '<a href="%(url)" target="_blank">%(title)</a>',
			items: itemListspinner
		}
	};	
	for (var n in optionspinner){
		$("#"+n).spinner(optionspinner[n]);
	}

	// uploadButton  ( Add file )
	$('#uploadButton').hover(function(){
		$('#upload_b').addClass('hover');
	},function(){
		$('#upload_b').removeClass('hover');
	});		
	// upload
	   $("input.fileupload").filestyle();
	// mutiupload
	  $('.uploadFile').live('click',function(){
		   $('#uploadify').uploadifyUpload(); 	
		   alertMessage("warning","Uploading....");
	  })		
	  $('#uploadify').uploadify({
		  'script'				: 'components/uploadify/uploadify.php',
		  'folder'    			: 'uploads',
		  'fileExt'				: '*.jpg;*.gif;*.png','fileDesc': 'Image Files (.JPG, .GIF, .PNG)',
		  'queueID'        : 'custom-queue',
		  'sizeLimit'			: parseInt($('#maxUploadFileSize').text()),
		  'onClearQueue'		: function(event) {
				  $('#upload_c').removeClass('special').addClass('disable');
				  $('#uploadFile').removeClass('uploadFile confirm ').addClass('disable');	 
				  $('#status-message').html(' ');
			},
		'onSelectOnce'	: function(event,data) {
				  $('#upload_c').removeClass('disable').addClass('special');
				  $('#uploadButtondisable').css({'display':'none'});
				  $('#uploadFile').removeClass('disable').addClass('uploadFile confirm ');	 
				  $('#status-message').html('Ready');
			},
		  'onAllComplete'		: function(event,data) {
				  if(data.errors){
					  $.text='Upload Complete '+ data.filesUploaded + ' file , <font color=red>and ' + data.errors + ' file donot Complete </font>.';
					  alertMessage('error',$.text);
				  }else{
					  $.text='Upload Complete '+ data.filesUploaded + ' file';
					  alertMessage('success',$.text);
					  // uploadmodal with close  ;
					  setTimeout('$.fancybox.close()',1500);  
				}
					$('#status-message').html($.text);
			}
		});	
	
	
	// Sortable
	$("#picThumb").sortable({
		opacity: 0.6,handle : '.move', connectWith: '.picThumbUpload', items: '.picThumbUpload'
	});
	$( "#sortable" ).sortable({
		opacity: 0.6,revert: true,cursor: "move", zIndex:9000
	});
	

    // Effect 
	$('.SEclick, .SEmousedown, .SEclicktime,.SEremote,.SEremote2,.SEremote3,.SEremote4').jrumble();
	$('.SE').jrumble({ x: 2, y: 2, rotation: 1 });
	$('.alertMessage.error ').jrumble({ x: 10, y: 10, rotation: 4});
	$('.alertMessage.success').jrumble({ x: 4, y: 0, rotation: 0 });
	$('.alertMessage.warning').jrumble({ x: 0,  y: 0, rotation: 5 });
	// Effect  with Hover
	$('.SE').hover(function(){
		$(this).trigger('startRumble');
	}, function(){
		$(this).trigger('stopRumble');
	});
	// Effect  with Click
	$('.SEclick').toggle(function(){
		$(this).trigger('startRumble');
	}, function(){
		$(this).trigger('stopRumble');
	});
	// Effect  with Mousedown
	$('.SEmousedown').bind({
		'mousedown': function(){
			$(this).trigger('startRumble');
		},'mouseup': function(){
			$(this).trigger('stopRumble');
		}
	});
	// Effect  with Click Time
	$('.SEclicktime').click(function(){
		var demoTimeout;
		$this = $(this);
		clearTimeout(demoTimeout);
		$this.trigger('startRumble');
		demoTimeout = setTimeout(function(){$this.trigger('stopRumble');}, 1500)
	});
	// Effect  with Remote Hover
	$('.SEremote').hover(function(){
		$('.SEremote2').trigger('startRumble');
	}, function(){
		$('.SEremote2').trigger('stopRumble');
	});
	// Effect  with Remote Hover
	$('.SEremote2').hover(function(){
		$('.SEremote').trigger('startRumble');
	}, function(){
		$('.SEremote').trigger('stopRumble');
	})
	// Effect  with Remote Hover
	$('.SEremote3').hover(function(){
		$('.alertMessage').trigger('startRumble');
	}, function(){
		$('.alertMessage').trigger('stopRumble');
	})
	// Effect  with Remote Hover
	$('.SEremote4').hover(function(){
		$('.alertMessage.error').trigger('startRumble');
	}, function(){
		$('.alertMessage.error').trigger('stopRumble');
	})
	
	// ShowCode 
	$('.showCode').sourcerer('js html css php'); 
	$('.showCodeJS').sourcerer('js'); 
	$('.showCodeHTML').sourcerer('html'); 
	$('.showCodePHP').sourcerer('php'); 
	$('.showCodeCSS').sourcerer('css'); 
	// Dual select boxes
	$.configureBoxes();
	// Textareaelastic
	$('#Textareaelastic').elastic();
	// Textarea limit
	 $('#Textarealimit').limit('140','.limitchars');
	
	 // placeholder text 
	$('input[placeholder], textarea[placeholder]').placeholder();
	// Checkbox 
	$('.ck').customInput();	
	// Checkbox Limit
	$('.limit3m').limitInput({max:3,disablelabels:true});
	// Select boxes
	$("select").not("select.chzn-select,select[multiple],select#box1Storage,select#box2Storage,select#maker,select#model,select#feature").selectBox();
	// Select boxes in Data table
	$(".dataTables_wrapper .dataTables_length select").addClass("small");
	$("table tbody tr td:first-child .custom-checkbox:first-child").css("margin: 0px 3px 3px 3px");
	 // Mutiselection
	$(".chzn-select").chosen(); 
	// Checkbox iphoneStyle
	$(".on_off_checkbox").iphoneStyle(); 
	$(".show_email").iphoneStyle({  //  Custom Label 
		  checkedLabel: "show Email",
		  uncheckedLabel: "Don't show ",
		  labelWidth:'85px'
	}); 
	$(".preOrder").iphoneStyle({  //  Custom Label 
		  checkedLabel: "in stocks",
		  uncheckedLabel: "out stocks",
		  labelWidth:'76px'
	}); 
	$(".online").iphoneStyle({  //  Custom Label 
		  checkedLabel: "online",
		  uncheckedLabel: "offline ",
		  labelWidth:'55px'
	}); 
	$(".show_conmap").iphoneStyle({ //  Custom Label  With  onChange function
		  checkedLabel: "show map",
		  uncheckedLabel: "Don't show ",
		  labelWidth:'85px',
		  onChange: function() {
				var chek=$(".show_conmap").attr('checked');
					  if(chek){
						  $(".disabled_map").fadeOut();
					  }else{
						 $(".disabled_map").fadeIn();
					  }
		}
	});
	// Checkbox  All in Data Table
	$(".checkAll").live('click',function(){
		  var table=$(this).parents('table').attr('id'),
		        checkedStatus = this.checked;
		 $( "table#"+table+" tbody tr td:first-child input:checkbox").each(function() {
			this.checked = checkedStatus;
				if (this.checked) {
					$(this).attr('checked', $(this).is(':checked'));
				}else{
					$(this).attr('checked', $(this).is(''));
					}
		});	 
	});		
	
	// Icon  gray Hover
	$('.iconBox.gray').hover(function(){
		  var name=$(this).find('img').attr('alt');
		  $(this).find('img').animate({ opacity: 0.5 }, 0, function(){
			    $(this).attr('src','images/icon/color_18/'+name+'.png').animate({ opacity: 1 }, 700);									 
		 });
	},function(){
		  var name=$(this).find('img').attr('alt');
		  $(this).find('img').attr('src','images/icon/gray_18/'+name+'.png');
	 })
	
	// ShoutcutBox   Hover
	$('.shoutcutBox').hover(function(){
		  $(this).animate({ left: '+=15'}, 200);
	},function(){
		  $(this).animate({ left: '0'}, 200);
	 });
	// Shoutcut   Hover
	$("#shortcut li").hover(function() {
		 var e = this;
		$(e).find("a").stop().animate({ marginTop: "-7px" }, 200, function() {
				$(e).find("a").animate({ marginTop: "-5px" }, 200);
		});
	  },function(){
		 var e = this;
		$(e).find("a").stop().animate({ marginTop: "2px" }, 200, function() {
				 $(e).find("a").animate({ marginTop: "0px" }, 200);
		});
	  });

	// Hide notify  Message with click
	$('#alertMessage').live('click',function(){
	  	$(this).stop(true,true).animate({ opacity: 0,right: '-20'}, 500,function(){ $(this).hide(); });						 
	});
	
	// jScrollPane  Overflow
	$('#albumsList,.albumpics,.overflow,.todate').jScrollPane({ autoReinitialise: true });
	
	// Conversation box tool (in conversation.html)
	$('.msg').live({
        mouseenter: function(){
			$(this).find('.toolMsg').show();
           },mouseleave: function(){
			$(this).find('.toolMsg').hide();
           }
     });
	
	// Filemanager. 
	// onload
	$('#finder').elfinder({
		url : 'components/elfinder/connectors/php/connector-fileimport.php',
		docked : true,dialog : { title : 'File manager',modal : true,width : 700 }
	})
	// on click callback
	$('#open_icon,#open_icon2,#open_icon3').click(function(){	
		  var callback=$(this).attr('id'), type=$(this).attr('title'), input=$(this).attr('rel');
		  fileDialogCallback(callback,type,input);					   
	});
	// on focus  callback
	$('.fileDialog').live('focus',function(){
		  var callback,input =$(this).attr('id'), type=$(this).attr('title');
		  fileDialogCallback(callback,type,input);										
	})

	// Confirm Delete.
	$(".Delete").live('click',function () { 
		var name = $(this).attr("data-name");
		$.confirm({
		'title': '_DELETE DIALOG BOX',
		'message': "<strong>YOU WANT TO DELETE </strong><br /><font color=red>' "+ name +" ' </font> ",
		'buttons': {
			   'Yes': { 
			   			'class': 'special',
						'action': function(){
						// Action when button Yes click.
			loading('Deleting...');
							setTimeout("unloading();",900); 		 
						 }},
				'No': { 'class'	: ''}}
		});
	});

	 // Drag & Drop  Delete images 
	$('.deletezone').droppable({
		hoverClass	: 'deletezoneover',
		activeClass	: 'deletezonedragging',
		tolerance		: 'pointer',
		drop				:  function(event,ui){	
		   							var name =ui.draggable.imgdata(1);  // Exampel value
									$.confirm({
									'title': '_DELETE DIALOG BOX',
									'message': "<strong>YOU WANT TO DELETE </strong><br /><font color=red>' "+ name +" ' </font> ",
									'buttons': {
										   'Yes': { 
													'class': 'special',
													'action': function(){
														// Action when button Yes click.
														loading('Deleting...');
														setTimeout("unloading();",900); 		 
													 }},
											'No': { 'class'	: ''}}
									});
								   }
	});             
	
	// CHARTS        
    $("table.chart").each(function() {
        var colors = [];
		var height=$(this).height();
        $("table.chart thead th:not(:first)").each(function() {
            colors.push($(this).css("color"));
        });
        $(this).graphTable({
            series: 'columns',
            position: 'replace',
			width: '96%',
            height: '423px',
            colors: colors
        }, { xaxis: {   tickSize: 1 },
			yaxis: {
				 max: 1000,
				min:0,
            },	series: {
				points: {show: true },
                lines: { show: true, fill: true, steps: false },
			}
        });
    });
    $("table.chart2").each(function() {
        var colors = [];
        $("table.chart thead th:not(:first)").each(function() {
            colors.push($(this).css("color"));
        });
        $(this).graphTable({
            series			: 	'columns', 
			position		: 	'replace',
			width			: 	'100%',
			height			: 	'300px', 
			colors			:	colors
        }, {  
			xaxis	 : 	{  tickSize: 1 },
			yaxis	 : 	{  max: 1000, min:200 },
			series	 :	{ 
								points	 : { show: true }, 
								lines	 : { show: true, fill: true, steps: false }
							 }
        });
    });
	// Pie Chart
	$("table.chart-pie").each(function() {
        var colors = [];
        $("table.chart-pie thead th:not(:first)").each(function() {
            colors.push($(this).css("color"));
        });
        $(this).graphTable({
            series			: 	'columns', 
			position		: 	'replace',
			width			: 	'100%',
			height			: 	'325px', 
			colors			:	colors
        }, {
		series: {
            pie: { 
                show: true,
				innerRadius: 0.5,
                radius: 1,
				tilt: 1,
                label: {
                    show: true,
                    radius: 1,
                    formatter: function(label, series){
                        return '<div id="tooltipPie"><b>'+label+'</b> : '+Math.round(series.percent)+'%</div>';
                    },
                    background: { opacity: 0 }
                }
            }
        },
        legend: { show: false},
		grid: {
				hoverable: false,
				autoHighlight: true
			}
        });
    });
	//Line Chart
	$("table.chart-line").each(function() {
        var colors = [];
        $("table.chart-line thead th:not(:first)").each(function() {
            colors.push($(this).css("color"));
        });
        $(this).graphTable({
            series			: 	'columns', 
			position		: 	'replace',
			width			: 	'99%',
			height			: 	'350px', 
			colors			:	colors
        }, { 
			xaxis		:   {  tickSize: 3 },
			yaxis	 	: 	{  max: 1000, min:0 },
			series		:   {
									points	: {show: true },
                					ines		: { show: true, fill: false, steps: false },
                					bars	: { show: false, barWidth: 0.6 }
								}
        });
    });
	//Bar Chart
	$("table.chart-bar").each(function() {
        var colors = [];
        $("table.chart-bars thead th:not(:first)").each(function() {
            colors.push($(this).css("color"));
        });
        $(this).graphTable({
            series: 'columns',
            position: 'replace',
			width : '100%',
            height: '350px',
            colors: colors
        }, {
			xaxis: {
                tickSize: 1
            },
			series: {
				bars: {
					show: true,
					lineWidth: 1,
					barWidth: 0.7,
					fill: true,
					fillColor: null,
					align: "center",
					horizontal: false
				},
				lines: {
					show: false
				},
				points: {
					show: false
				}
			},
			yaxis: {
				max: null,
				autoscaleMargin: 0.02
            }
        });
    });

	//Tooltip Chart
    function showTooltip(x, y, contents) {
        $('<div id="tooltip" >' + contents + '</div>').css({
            position: 'absolute',
            display: 'none',
            top: y -13,
            left: x + 10
        }).appendTo("body").show();
    }

    var previousPoint = null;
    $(".chart_flot").bind("plothover", function(event, pos, item) {							
        $("#x").text(pos.x);
        $("#y").text(pos.y);
        if (item) {
            if (previousPoint != item.dataIndex) {
                previousPoint = item.dataIndex;
			$(this).attr('title',item.series.label);
			$(this).trigger('click');
                $("#tooltip").remove();
                var x = item.datapoint[0],
                       y = item.datapoint[1];
                showTooltip(item.pageX, item.pageY, "<b>" + item.series.label + "</b> : " + y);
            }
        }  else {
            $("#tooltip").remove();
            previousPoint = null;
        }
    });

});		


	/***********************************************************************
	************************************************************************
	**                                Check browser fixbug                                         ** 
	************************************************************************
	***********************************************************************/  
	
	
	var mybrowser=navigator.userAgent;
	if(mybrowser.indexOf('MSIE')>0){$(function() {	// IE  Fixbug
			   $('.formEl_b fieldset').css('padding-top', '0');
				$('div.section label small').css('font-size', '10px');
				$('div.section  div .select_box').css({'margin-left':'-5px'});
				$('.iPhoneCheckContainer label').css({'padding-top':'6px'});
				$('.uibutton').css({'padding-top':'6px'});
				$('.uibutton.icon:before').css({'top':'1px'});
				$('.dataTables_wrapper .dataTables_length ').css({'margin-bottom':'10px'});
		});
	}
	if(mybrowser.indexOf('Firefox')>0){ $(function() {	 // Firefox  Fixbug
			   $('.formEl_b fieldset  legend').css('margin-bottom', '0px');	
			   $('table .custom-checkbox label').css('left', '3px');
		  });
	}	
	if(mybrowser.indexOf('Presto')>0){ // Opera  Fixbug
		$('select').css('padding-top', '8px');
	}
	if(mybrowser.indexOf('Chrome')>0){$(function() {	 // Chrome  Fixbug
				 $('div.tab_content  ul.uibutton-group').css('margin-top', '-40px');
				  $('div.section  div .select_box').css({'margin-top':'0px','margin-left':'-2px'});
				  $('select').css('padding', '6px');
				  $('table .custom-checkbox label').css('left', '3px');
		});
	}		
	if(mybrowser.indexOf('Safari')>0){}	// Safari  Fixbug
	
	
	/***********************************************************************
	************************************************************************
	**                                Fuction In This Template                                     ** 
	************************************************************************
	***********************************************************************/  


	  function fileDialogCallback(callback,type,input){
			$('<div id="finder_'+callback+'"/>').elfinder({
				 url : 'components/elfinder/connectors/php/connector-'+type+'.php', editorCallback : function(url) { $('#'+input).val(url);
				},closeOnEditorCallback : true, dialog : { title : 'File manager',modal : true,width : 700 }
			})							   
	  }
	  function fileDialog(callback,type){
			$('<div id="finder_'+callback+'"/>').elfinder({
				  url : 'components/elfinder/connectors/php/connector-'+type+'.php',dialog : { title : 'File manager',modal : true,width : 700 }
			})							   
	  } 
	  function hexFromRGB(r, g, b) {
		  var hex = [ r.toString( 16 ), g.toString( 16 ), b.toString( 16 ) ];
		  $.each( hex, function( nr, val ) {
			  if ( val.length === 1 ) { hex[ nr ] = "0" + val; }
		  });
		  return hex.join( "" ).toUpperCase();
	  }
	  function refreshSwatch() {
		  var red = $( "#red" ).slider( "value" ),
			  green = $( "#green" ).slider( "value" ),
			  blue = $( "#blue" ).slider( "value" ),
			  hex = hexFromRGB( red, green, blue );
		  $( "#swatch" ).css( "background-color", "#" + hex );
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
	  // Loading 
	  function loading(name,overlay) { 
			$('body').append('<div id="overlay"></div><div id="preloader">'+name+'..</div>');
					if(overlay==1){
					  		$('#overlay').css('opacity',0.4).fadeIn(400,function(){  $('#preloader').fadeIn(400);	});
					  return  false;
			  		 }
			$('#preloader').fadeIn();	  
	   }
	   // Unloading 
	  function unloading() { 
			$('#preloader').fadeOut(400,function(){ $('#overlay').fadeOut(); $.fancybox.close(); }).remove();
	   }
	   // Form Reset 
	  function ResetForm(){
		  $('form').each(function(index) {	  
			var form_id=$('form:eq('+index+')').attr('id');
				  if(form_id){ 
					  $('#'+form_id).get(0).reset(); 
					  $('#'+form_id).validationEngine('hideAll');
							  var editor=$('#'+form_id).find('#editor').attr('id');
							  if(editor){
								   $('#editor').cleditor()[0].clear();
							  }
				  } 
		  });	
	  }
		// imgRow in Gallery pages
	   function imgRow(){	
			  var maxrow=$('.albumpics').width();
			  if(maxrow){
					  maxItem= Math.floor(maxrow/160);
					  maxW=maxItem*160;
					  mL=(maxrow-maxW)/2;
					  $('.albumpics ul').css({
							  'width'	:	maxW	,
							  'marginLeft':mL
			   })
		  }}	
		  // on Scrooll Down slide bar
		  function scrollmenu(){	
				if($(window).scrollTop()>=1){			   
					$("#header ").css("z-index", "50"); 
				}else{
					$("#header ").css("z-index", "47"); 
			   }
		  }
		
		 function LResize(){	
						imgRow(); 
						scrollmenu();
		/*		if($(window).width()<=480) {
							$(' .albumImagePreview').show();
							$('.screen-msg').hide();
							$('.albumsList').hide();
				}*/
				if($(window).width()<=768){
					$('#main_menu').removeClass('main_menu').addClass('iconmenu');
							$('#main_menu li').each(function() {	  
									var title=$(this).find('b').text();
									$(this).find('a').attr('title',title);		
							});
							$('#main_menu li a').find('b').hide();	
							$('#main_menu li ').find('ul').hide();
				}else{
					$('#main_menu').removeClass('iconmenu ').addClass('main_menu');
					$('#main_menu li a').find('b').show();	
					}
		}