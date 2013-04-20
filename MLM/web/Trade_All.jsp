<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                <span><i class="icon-table"></i>View Trade</span>
                            </div><!-- End widget-header -->	

                            <div class="widget-content">
                                <!-- Table UITab -->
                                <div class="tab_container" >

                                    <div class="btn-group pull-top-right btn-square">
                                        <a class="btn  btn-large " href="javascript:void(0)"><i class="icon-plus"></i>  Add Product</a>
                                        <a class="btn  btn-large btn-danger DeleteAll" href="javascript:void(0)"><i class="icon-trash"></i> Delete  All</a>
                                    </div> 
                                    <div id="tab1" class="tab_content"> 

                                        <table class="table table-bordered table-striped data_table3 "  id="data_table3">
                                            <thead align="center">

                                                <tr>
                                                    <th width="18">
                                            <div class="checksquared"><input type="checkbox"  id="checkAll1"   class="checkAll" /><label for="checkAll1"></label></div>
                                            </th>

                                            <th>Order_ID</th>
                                            <th>Order_Date</th>
                                            <th>T_Goross</th>
                                            <th>T_Tax</th>
                                            <th>Discount</th>
                                            <th>Total</th>
                                            <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody align="center">
                                            <c:forEach items="${Trade}" var="s">  
                                            <tr>
                                                <td><div class="checksquared"><input type="checkbox"   name="checkbox[]" /><label></label></div></td>
                                                <td>${s.getOrder_id()}</td>
                                                <td>${s.getOrder_date()}</td>
                                                <td>${s.getT_gross()}</td>
                                                <td>${s.getT_tax()}</td>
                                                <td>${s.getDiscount()}</td>
                                                <td>${s.getTotal()}</td>
                                                <td>
                                                          <span class="tip"><a original-title="Edit" href="Controller?Action=ShowTrade&uid=${s.getOrder_id()}"><img src="images/icon/icon_edit.png"></a></span> 
                                                          <span class="tip"><a href="" class="Delete" name="delete name" title="Delete"><img src="images/icon/icon_delete.png"></a></span> 
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                </div><!--tab1-->


                            </div>

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