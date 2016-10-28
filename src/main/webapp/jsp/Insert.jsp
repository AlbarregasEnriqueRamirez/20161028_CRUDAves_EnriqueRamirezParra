<%-- 
    Document   : Insert
    Created on : 27-oct-2016, 16:29:30
    Author     : rpk19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "../include/cabecera.jsp" %>
    <body>
        <article>
            <header>
                <h1>Nuevo avistamiento</h1>
            </header>
            <form action="InsertController" method="post">
            <section>
                <p> Anilla <input type="text" name ="txtAnilla"/></p>
                <p> Especie <input type="text" name ="txtEspecie"/></p>
                <p> Lugar <input type="text" name ="txtLugar"/></p>
                <p> Fecha <input type="date" name ="txtFecha"/></p>
                
            </section>
                <input type="submit" value ="Registrar avistamiento" name="btnInsertPollo"/>
            </form>
             <%@include file = "../include/pie.jsp" %>
        </article>
    </body>
</html>
