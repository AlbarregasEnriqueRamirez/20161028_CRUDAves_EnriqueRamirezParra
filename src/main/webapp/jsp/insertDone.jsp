<%-- 
    Document   : insertDone
    Created on : 28-oct-2016, 10:45:54
    Author     : rpk19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file ="../include/cabecera.jsp" %>
    <body
        <article>
            <p><h1> Datos insertados correctamente </h1></p>
        <section>
        <p> <h2> Sus datos </h2></p>
        Anilla:<%=request.getParameter("txtAnilla")%><br>
        Especie: <%=request.getParameter("txtEspecie")%><br>
        Lugar:<%=request.getParameter("txtLugar")%><br>
        Fecha: <%=request.getParameter("txtFecha")%><br>
        </section>
       
            
       <%@include file="../include/pie.jsp"%>
        </article>
    </body>
</html>
