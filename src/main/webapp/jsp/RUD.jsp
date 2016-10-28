<%-- 
    Document   : RUD
    Created on : 28-oct-2016, 12:05:46
    Author     : rpk19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "../include/cabecera.jsp" %>
    <body>
        <article>
            hola soy el rud
            <!--Como siempre voy a mostrar la tabla, sea lo que sea lo que pida el user en este jsp,
            la muestro directamente, despues mostrare lo que corresponda-->
            <%@include file ="../include/tabla.jsp"%>
            <%switch(request.getParameter("opcion")){
                case "1":%>
             <%@include file ="../include/update.jsp"%>
            <%
                    break;
                case "2":%>
             <%@include file ="../include/delete.jsp"%><%
                    break;
            }%>
             <%@include file = "../include/pie.jsp" %>
        </article>
    </body>
</html>
