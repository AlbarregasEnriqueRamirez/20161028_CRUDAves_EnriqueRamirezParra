<%-- 
    Document   : tabla
    Created on : 28-oct-2016, 11:53:27
    Author     : rpk19
--%>




<table>
    <tr>
        <th> Anilla</th><th>Especie</th><th>Lugar</th><th>Fecha</th>
    </tr>
<%
while(rs.next()){
%>
<tr>
    <td><%=rs.getString("anilla")%></td>  <td><%=rs.getString("especie")%></td>  <td><%=rs.getString("lugar")%></td>  <td><%=rs.getString("fecha")%></td>
            
</tr>
<%}//end while resultset%>

</table>