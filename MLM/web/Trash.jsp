<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from zicedemo.com/1.7/table.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:26:19 GMT -->
<head>
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
                              <ul  id="shortcut" class="clearfix">
                              <li> <a href="#" title="Back To home"> <img src="images/icon/shortcut/home.png" alt="home"/><strong>Home</strong> </a> </li>
                              <li> <a href="#" title="Website Graph"> <img src="images/icon/shortcut/graph.png" alt="graph"/><strong>Graph</strong> </a> </li>
                              <li> <a href="#" title="Setting" > <img src="images/icon/shortcut/setting.png" alt="setting" /><strong>Setting</strong></a> </li> 
                              <li> <a href="#" title="Messages"> <img src="images/icon/shortcut/mail.png" alt="messages" /><strong>Message</strong></a><div class="notification" >10</div></li>
                              </ul>
                          </div>
                    </div>
                    
                    <div class="row-fluid">
                    
                    		<!-- Table widget -->
                            <div class="widget  span12 clearfix">
                            
                                <div class="widget-header">
                                    <span><i class="icon-table"></i>  Trash Management </span>
                                </div><!-- End widget-header -->	
                                
                                <div class="widget-content">
                                          <!-- Table UITab -->
                                          <div id="UITab" style="position:relative;">
                                          <ul class="tabs" >
                                              <li ><a href="#tab1"> Member</a></li>  
                                              <li ><a href="#tab2"> Product</a></li>            
                                         	  <li ><a href="#tab3"> Category</a></li>  
                                              <li ><a href="#tab4"> Trade</a></li>            
                                         	  <li ><a href="#tab5"> Payment</a></li>
                                          </ul>
                                          <div class="tab_container" >
                    
                                              <div id="tab1" class="tab_content"> 
                                                    <div class="btn-group pull-top-right btn-square">
                                                      <a class="btn  btn-large " href="javascript:void(0)"><i class="icon-plus"></i>  Add Product</a>
                                                      <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                                    </div>
                                                  <table class="table table-bordered table-striped data_table3 "  id="data_table3">
                                                    <thead align="center">
                                                      <tr>
                                                        <th width="18">
                                                            <div class="checksquared"><input type="checkbox"  id="checkAll1"   class="checkAll" /><label for="checkAll1"></label></div>
                                                        </th>
                                                        <th width="60">Profile Picture</th>
                                                        <th>Name</th>
                                                        <th>ID</th>
                                                        <th width="120">Status</th>
                                                        <th>Management</th>
                                                      </tr>
                                                    </thead>
                                                    <tbody align="center">
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a onclick="hi('http://www.google.com')" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="#" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                      <tr>
                                                        <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                        <td><img data-src="holder.js/60x40" alt=""></td>
                                                        <td>Title Name</td>
                                                        <td>18769</td>
                                                        <td>
                                                            <span class="checkslide">
                                                                <input type="checkbox" checked="checked" />
                                                                <label data-on="On" data-off="Off"></label>
                                                            </span>
                                                        </td>
                                                        <td>
                                                          <span class="tip" ><a href="modalEdit2dfa.html?idEdit=edit" class="pop_box" title="Edit" ><img src="images/icon/icon_edit.png" ></a></span> 
                                                          <span class="tip" ><a href="javascript:void(0)" class="Delete" data-name="delete name" title="Delete"  ><img src="images/icon/icon_delete.png" ></a></span> 
                                                         </td>
                                                      </tr>
                                                      
                                                    </tbody>
                                                  </table>
                                              </div><!--tab1-->
                                              
                                              
                                              <div id="tab2" class="tab_content"> 
                                                  <table class="table table-bordered table-striped  data_table3" >
                                                      <thead>
                                                          <tr>
                                                              <th>Rendering engine</th>
                                                              <th>Browser</th>
                                                              <th>Platform(s)</th>
                                                              <th>Engine version</th>
                                                              <th>CSS grade</th>
                                                          </tr>
                                                      </thead>
                                                      <tbody align="center">
                                                          <tr class="odd gradeX">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 4.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center"> 4</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="even gradeC">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.5</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="even gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 6</td>
                                                              <td>Win 98+</td>
                                                              <td class="center">6</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet Explorer 7</td>
                                                              <td>Win XP SP2+</td>
                                                              <td class="center">7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="even gradeA">
                                                              <td>Trident</td>
                                                              <td>AOL browser (AOL desktop)</td>
                                                              <td>Win XP</td>
                                                              <td class="center">6</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Firefox 1.0</td>
                                                              <td>Win 98+ / OSX.2+</td>
                                                              <td class="center">1.7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Firefox 1.5</td>
                                                              <td>Win 98+ / OSX.2+</td>
                                                              <td class="center">1.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Firefox 2.0</td>
                                                              <td>Win 98+ / OSX.2+</td>
                                                              <td class="center">1.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Firefox 3.0</td>
                                                              <td>Win 2k+ / OSX.3+</td>
                                                              <td class="center">1.9</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Camino 1.0</td>
                                                              <td>OSX.2+</td>
                                                              <td class="center">1.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Camino 1.5</td>
                                                              <td>OSX.3+</td>
                                                              <td class="center">1.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Netscape 7.2</td>
                                                              <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                              <td class="center">1.7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Netscape Browser 8</td>
                                                              <td>Win 98SE+</td>
                                                              <td class="center">1.7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Netscape Navigator 9</td>
                                                              <td>Win 98+ / OSX.2+</td>
                                                              <td class="center">1.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.0</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.1</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1.1</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.2</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1.2</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.3</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1.3</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.4</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1.4</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Gecko</td>
                                                              <td>Mozilla 1.5</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">1.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>Safari 1.2</td>
                                                              <td>OSX.3</td>
                                                              <td class="center">125.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>Safari 1.3</td>
                                                              <td>OSX.3</td>
                                                              <td class="center">312.8</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>Safari 2.0</td>
                                                              <td>OSX.4+</td>
                                                              <td class="center">419.3</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>Safari 3.0</td>
                                                              <td>OSX.4+</td>
                                                              <td class="center">522.1</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>OmniWeb 5.5</td>
                                                              <td>OSX.4+</td>
                                                              <td class="center">420</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>iPod Touch / iPhone</td>
                                                              <td>iPod</td>
                                                              <td class="center">420.1</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Webkit</td>
                                                              <td>S60</td>
                                                              <td>S60</td>
                                                              <td class="center">413</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 7.0</td>
                                                              <td>Win 95+ / OSX.1+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 7.5</td>
                                                              <td>Win 95+ / OSX.2+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 8.0</td>
                                                              <td>Win 95+ / OSX.2+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 8.5</td>
                                                              <td>Win 95+ / OSX.2+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 9.0</td>
                                                              <td>Win 95+ / OSX.3+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 9.2</td>
                                                              <td>Win 88+ / OSX.3+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Presto</td>
                                                              <td>Opera 9.5</td>
                                                              <td>Win 88+ / OSX.3+</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Misc</td>
                                                              <td>NetFront 3.1</td>
                                                              <td>Embedded devices</td>
                                                              <td class="center">-</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="gradeA">
                                                              <td>Misc</td>
                                                              <td>NetFront 3.4</td>
                                                              <td>Embedded devices</td>
                                                              <td class="center">-</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="gradeX">
                                                              <td>Misc</td>
                                                              <td>Dillo 0.8</td>
                                                              <td>Embedded devices</td>
                                                              <td class="center">-</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="gradeX">
                                                              <td>Misc</td>
                                                              <td>Links</td>
                                                              <td>Text only</td>
                                                              <td class="center">-</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="gradeX">
                                                              <td>Misc</td>
                                                              <td>Lynx</td>
                                                              <td>Text only</td>
                                                              <td class="center">-</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="gradeC">
                                                              <td>Misc</td>
                                                              <td>IE Mobile</td>
                                                              <td>Windows Mobile 6</td>
                                                              <td class="center">-</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="gradeC">
                                                              <td>Misc</td>
                                                              <td>PSP browser</td>
                                                              <td>PSP</td>
                                                              <td class="center">-</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="gradeU">
                                                              <td>Other browsers</td>
                                                              <td>All others</td>
                                                              <td>-</td>
                                                              <td class="center">-</td>
                                                              <td class="center">U</td>
                                                          </tr>
                                                      </tbody>
                                                  </table>
                                              </div><!--tab2-->
                                         
                                          <div id="tab3" class="tab_content"> 
                                               <div class="btn-group pull-top-right btn-square">
                                                      <a class="btn  btn-large " href="javascript:void(0)"><i class="icon-plus"></i>  Add Product</a>
                                                      <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                                    </div>
                                                  <table class="table table-bordered table-striped  data_table3" >
                                                      <thead>
                                                          <tr>
                                                              <th>Rendering engine</th>
                                                              <th>Browser</th>
                                                              <th>Platform(s)</th>
                                                              <th>Engine version</th>
                                                              <th>CSS grade</th>
                                                          </tr>
                                                      </thead>
                                                      <tbody align="center">
                                                          <tr class="odd gradeX">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 4.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center"> 4</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="even gradeC">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.5</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="even gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 6</td>
                                                              <td>Win 98+</td>
                                                              <td class="center">6</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet Explorer 7</td>
                                                              <td>Win XP SP2+</td>
                                                              <td class="center">7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                      </tbody>
                                                  </table>
       	                                       </div><!--tab3-->
       						 <div id="tab4" class="tab_content"> 
       <div class="btn-group pull-top-right btn-square">
                                                      <a class="btn  btn-large " href="javascript:void(0)"><i class="icon-plus"></i>  Add Product</a>
                                                      <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                                    </div>
                                                  <table class="table table-bordered table-striped  data_table3" >
                                                      <thead>
                                                          <tr>
                                                              <th>Rendering engine</th>
                                                              <th>Browser</th>
                                                              <th>Platform(s)</th>
                                                              <th>Engine version</th>
                                                              <th>CSS grade</th>
                                                          </tr>
                                                      </thead>
                                                      <tbody align="center">
                                                          <tr class="odd gradeX">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 4.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center"> 4</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="even gradeC">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.5</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="even gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 6</td>
                                                              <td>Win 98+</td>
                                                              <td class="center">6</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet Explorer 7</td>
                                                              <td>Win XP SP2+</td>
                                                              <td class="center">7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                      </tbody>
                                                  </table>
                                              </div><!--tab4-->
       											 <div id="tab5" class="tab_content"> 
       											<div class="btn-group pull-top-right btn-square">
                                                      <a class="btn  btn-large " href="javascript:void(0)"><i class="icon-plus"></i>  Add Product</a>
                                                      <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                                    </div>
                                                  
                                                  <table class="table table-bordered table-striped  data_table3" >
       
                                                      <thead>
                                                          <tr>
                                                              <th>Rendering engine</th>
                                                              <th>Browser</th>
                                                              <th>Platform(s)</th>
                                                              <th>Engine version</th>
                                                              <th>CSS grade</th>
                                                          </tr>
                                                      </thead>
                                                      <tbody align="center">
                                                          <tr class="odd gradeX">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 4.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center"> 4</td>
                                                              <td class="center">X</td>
                                                          </tr>
                                                          <tr class="even gradeC">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.0</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5</td>
                                                              <td class="center">C</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 5.5</td>
                                                              <td>Win 95+</td>
                                                              <td class="center">5.5</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="even gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet
                                                                   Explorer 6</td>
                                                              <td>Win 98+</td>
                                                              <td class="center">6</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                          <tr class="odd gradeA">
                                                              <td>Trident</td>
                                                              <td>Internet Explorer 7</td>
                                                              <td>Win XP SP2+</td>
                                                              <td class="center">7</td>
                                                              <td class="center">A</td>
                                                          </tr>
                                                      </tbody>
                                                  </table>
                                              </div><!--tab3-->
       		                                  		                                  	                                  
                                              
                                      </div>
                                      </div><!-- End UITab -->
                                      <div class="clearfix"></div>
                  
                                </div><!--  end widget-content -->
                            </div><!-- widget  span12 clearfix-->

                    </div><!-- row-fluid -->

                    <div id="footer"> &copy; Copyright 2012 <span class="tip"><a  href="#" title="Zice Admin" >Your Company Name</a> </span> </div>
                    
                </div> <!--// End inner -->
              </div> <!--// End ID content --> 
</body>

<!-- Mirrored from zicedemo.com/1.7/table.html by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 10 Jan 2013 06:26:19 GMT -->
</html>