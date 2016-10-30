<%-- 
    Document   : index
    Created on : 26-oct-2016, 17:41:31
    Author     : rpk19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <%@include file='include/cabecera.jsp' %>
    <body>
        <article>
    
        <header>
            <h1> Menu avistamientos</h1>
        </header>
      
        
     <ul>
              <!--select todos-->
        <li><a href="MenuController?opcion=0&accion=1">Ver avistamientos</a></li>
            <!--update -->
        <li><a href="MenuController?opcion=1&accion=1">Modificar datos de un avistamiento</a></li>
            <!--delete-->
        <li><a href="MenuController?opcion=2&accion=1">Eliminar avistamientos</a></li>
            <!--insert-->
        <li><a href="MenuController?accion=2">Nuevo avistamiento</a></li>
    </ul>
        
          <%@include file='include/pie.jsp' %>
        </article>
    </body>
</html>
