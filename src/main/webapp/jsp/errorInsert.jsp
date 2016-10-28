<%-- 
    Document   : errorInsert
    Created on : 28-oct-2016, 10:51:30
    Author     : rpk19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file='../include/cabecera.jsp' %>
    <body>
        <article>
           <h1> Error al insertar, la anilla <%=request.getParameter("txtAnilla")%> 
                ya esta asociada a un ave registrada </h1>
          
      
               
        <%@include file='../include/pie.jsp' %>
        </article>
    </body>
    
</html>
