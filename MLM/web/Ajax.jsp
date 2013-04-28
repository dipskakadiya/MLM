<%-- 
    Document   : Ajax
    Created on : Apr 17, 2013, 10:20:13 AM
    Author     : sai
--%>

<!--  Other Animation JQuery  -->
<script>
    jQuery(document).ready(function() {
        $(".chzn-select").chosen();
    });
</script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    if (request.getAttribute("Action") != null) {
        if (request.getAttribute("Action").equals("GetProduct")) {%>
<c:forEach items="${Product}" var="s">
    <li class="albumImage">
        <div class="picHolder">
            <span class="image_highlight"></span>
            <img src="${s.getImg()}" title="Drag Image to delete" />
            <div class="picTitle">${s.getItemname()}</div>
            <ul class="dataImg">
                <li>${s.getItemid()}</li><!-- product ID -->
                <li>${s.getItemname()}</li><!-- Product Name -->
                <li>${s.getRate()}</li><!-- Sales Rate -->
                <li>${s.getTax()}</li><!-- Tax on Item -->
                <li>${s.getStock()}</li><!-- Stock -->
            </ul>
        </div>
    </li>
</c:forEach>
<%}
if (request.getAttribute("Action").equals("GetState")) {%>
<label>Select State<small></small></label>
<div>
    <select id="state" name="state" class="chzn-select"
            tabindex="4">
        <c:forEach items="${State}" var="s">
            <option value="${s.getStateid()}">${s.getState()}</option>
        </c:forEach>
    </select> 
    <label id="msg_state" class="red"></label>
</div>
<script>
     jQuery(document).ready(function() {
     //Getting All City
     
        $.ajax({url:"Controller?Action=CallAjax&SubAction=GetCity&id="+$('#state').val(),success:function(result){
                $("#cityDisplay").html(result);
            }}); 
        $('#state').change( function() {
            $.ajax({url:"Controller?Action=CallAjax&SubAction=GetCity&id="+$(this).val(),success:function(result){
                    $("#cityDisplay").html(result);
                }});
        });
     });
</script>
<%}if (request.getAttribute("Action").equals("GetCity")) {%>
<label>Select City<small></small></label>
<div>
    <select id="city" name="city" class="chzn-select">
        <c:forEach items="${Cities}" var="s">
            <option value="${s.getCityid()}">${s.getCity()}</option>
        </c:forEach>
    </select> <label id="msg_city" class="red"></label>
</div>
<%}
    }%>    