<%-- 
    Document   : Delete
    Created on : 28-oct-2016, 12:34:15
    Author     : rpk19
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ResultSet rs;%>
<% rs = (ResultSet)request.getAttribute("listaAves");
while(rs.next()){%>
<input type="checkbox" name ='chk' value='<%=rs.getString("anilla")%>'>Especie: <%=rs.getString("especie")%> Lugar <%=rs.getString("lugar")%> Fecha <%=rs.getString("fecha")%>
    
<%}%>
<input type="submit" value ="eliminar datos datos"/>