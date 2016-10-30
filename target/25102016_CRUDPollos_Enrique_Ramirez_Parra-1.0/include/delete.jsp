<%-- 
    Document   : Delete
    Created on : 28-oct-2016, 12:34:15
    Author     : rpk19
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ResultSet rstd;%>
<% rstd = (ResultSet)request.getAttribute("listaAves");
while(rstd.next()){%>
<input type="checkbox" name ='chk' value='<%=rstd.getString("anilla")%>'>
Especie: <%=rstd.getString("especie")%> 
Lugar <%=rstd.getString("lugar")%> 
Fecha <%=rstd.getString("fecha")%><br>
    
<%}%>
<input type="submit" value ="eliminar datos datos"/>