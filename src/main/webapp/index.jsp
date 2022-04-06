

<%@page import="com.emergentes.modelo.Productos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="border: 5px red dashed; text-align: center; margin: auto 500px; border-radius: 20px;">
            <h2>Primer Parcial TEM-742</h2>
            <p><b>Nombre:</b>Boris Leonel Mita Huchani</p>
            <p><b>Carnet:</b>9952693 LP</p>
        </div>
        
        <div style="text-align: center; margin: auto 200px; border-radius: 20px;">

            <h1>Listado de Productos</h1>
            <a href="MainController?op=nuevo" style="margin-left: -1000px" >Nuevo Registro</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Descipción</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Categoría</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    if (lista != null) {
                        for(Productos item : lista){

                %>
                    <tr>
                        <td><%= item.getId() %></td>
                        <td><%= item.getDescripcion()%></td>
                        <td><%= item.getCantidad()%></td>
                        <td><%= item.getPrecio() %></td>
                        <td><%= item.getCategoria()%></td>
                        <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                        <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de eliminar el registro?')">Eliminar</a></td>
                    </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </body>
</html>
