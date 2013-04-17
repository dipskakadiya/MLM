<%-- 
    Document   : Ajax
    Created on : Apr 17, 2013, 10:20:13 AM
    Author     : sai
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getAttribute("Action")!=null){
if(request.getAttribute("Action").equals("GetProduct")){%>
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
<%}}%>    