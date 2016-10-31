<%-- 
    Document   : rud
    Created on : 28-oct-2016, 16:56:01
    Author     : rpk19
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%!ResultSet rs;%>
<%rs = (ResultSet)request.getAttribute("listaAves");%>

    <%@include file = "../include/cabecera.jsp" %>
    <body>
        <article>
        
            <!--Como siempre voy a mostrar la tabla, sea lo que sea lo que pida el user en este jsp,
            la muestro directamente, despues mostrare lo que corresponda-->
            <%@include file ="../include/tabla.jsp"%>
            
            
            <% if (request.getParameter("opcion").equals("1")){%>
                 <%@include file ="../include/update.jsp"%>
            <%}else if(request.getParameter("opcion").equals("2")){%>
             <%@include file ="../include/delete.jsp"%>
            <%}%>
        </article>
    </body>
</html>
