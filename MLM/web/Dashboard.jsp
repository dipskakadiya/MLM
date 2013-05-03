<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
    <head>

        <title>Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="Css_Jq.jsp"></jsp:include>
        <SCRIPT LANGUAGE="Javascript" SRC="js/FusionCharts.js">
        </SCRIPT>
        <script>
            var sty="<styles><definition><style name='myFont' type='font' isHTML='1' bold='1' size='11' color='FFFFFF' /><style name='myShadow' type='shadow' color='333333' angle='45' strength='3'/></definition><application><apply toObject='YAxisValues' styles='myFont,myShadow' /><apply toObject='DataLabels' styles='myFont,myShadow' /><apply toObject='DataValues' styles='myFont,myShadow' /><apply toObject='Caption' styles='myFont,myShadow' /></application></styles>";
        </script>
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
                        <div class="widget-content">

                            <div class="widget-content">
                                <div class="boxtitle">website status</div>
                                <div class="row-fluid">
                                    <div class="span6">
                                        <div class="text" id="PurChart">
                                        </div>
                                        <div class="text" id="PurChart1">
                                        </div>
                                        <script language="JavaScript">					
                                            var chart1 = new FusionCharts("images/Charts/Doughnut2D.swf", "chart1Id", "400", "300", "0", "0");		   			
                                            var xml="${XmlKEy1}";
                                              
                                                chart1.setDataXML("<chart bgAlpha='0,0' caption='Monthly Purchase' numberScaleValue='1,1,1' numberScaleUnit=',,,' baseFontSize='12'>"+xml+sty+"</chart>");
                                                chart1.setTransparent(true);
                                                chart1.render("PurChart");
                                                var myChart = new FusionCharts("images/Charts/SSGrid.swf", "myGrid1", "400", "100", "0", "0");
                                                myChart.addVariable('showPercentValues', '1');
                                                myChart.setDataXML("<chart >"+xml+"</chart>");
                                                myChart.render("PurChart1");
                                        </script>
                                    </div><!-- span6 column-->
                                    <div class="span6">

                                    </div><!-- span6 column-->

                                </div><!-- row-fluid column-->
                            </div><!--  end widget-content -->
                        </div><!-- widget  span12    clearfix-->




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