<%-- 
    Document   : Update
    Created on : 28-oct-2016, 12:08:16
    Author     : rpk19
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! ResultSet rstu;%>
<% rstu = (ResultSet)request.getAttribute("listaAves");
while(rstu.next()){%>
<input type="radio" name ='rdb' value='<%=rstu.getString("anilla")%>'>
Especie: <%=rstu.getString("especie")%>
Lugar <%=rstu.getString("lugar")%>
Fecha <%=rstu.getString("fecha")%><br>
    
<%}%>
<input type="submit" value ="modificar datos"/>