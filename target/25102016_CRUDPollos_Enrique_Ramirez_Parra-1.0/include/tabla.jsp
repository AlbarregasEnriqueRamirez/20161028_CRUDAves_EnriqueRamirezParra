<%-- 
    Document   : tabla
    Created on : 28-oct-2016, 11:53:27
    Author     : rpk19
--%>



<%@page import="java.sql.ResultSet"%>
<%!ResultSet rs;%>
<%rs = (ResultSet)request.getAttribute("listaAves");%>
<table>
    <tr>
           <%if(request.getParameter("opcion").equals("1")){%>
           <th>Modificar</th>
            <%}%>
           <%if(request.getParameter("opcion").equals("2")){%>
           <th>Eliminar</th>
            <%}%>
           <th>Especie</th>
           <th>Lugar</th>
           <th>Fecha</th>
    </tr>
<%
while(rs.next()){
%>
<tr>
    <%if(request.getParameter("opcion").equals("1")){%>
    <td><input type="radio" name ='rdb' value='<%=rs.getString("anilla")%>'></td>
    <%}%>
  <%if(request.getParameter("opcion").equals("2")){%>
    <td><input type="checkbox" value='<%=rs.getString("anilla")%>'></td>
    <%}%>
    <td><%=rs.getString("especie")%></td>  
    <td><%=rs.getString("lugar")%></td>  
    <td><%=rs.getString("fecha")%></td>
            
</tr>
<%}//end while resultset%>

</table>
<%if(request.getParameter("opcion").equals("1")){%>
<input type='submit' name ='btnmod' value='Modificar'/>
<%} if(request.getParameter("opcion").equals("2")){%>
<input type='submit' name ='btndelete' value='Eliminar'/>
<%}%>