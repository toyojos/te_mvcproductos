<%@page import="com.uopen.modelo.Productos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listaprod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Producto:</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for (Productos item : lista){
                
            %>

            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <th><%= item.getCategoria() %></th>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick='return confirm("Está seguro de Eliminar el Producto ?")'>Eliminar</a></td>

            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
