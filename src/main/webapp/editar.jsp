

<%@page import="com.emergentes.modelo.Productos"%>
<%
    Productos item = (Productos) request.getAttribute("miPersona");
    
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
            <h1><%= (item.getId() == 0) ? "Nuevo registro":"Editar Registro" %></h1>
        <form action="MainController" method="POST">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            <table style="margin: 50px auto">
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="des" value="<%= item.getDescripcion() %>" placeholder="Descripción"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="number" name="cant" value="<%= item.getCantidad()%>" placeholder="Cantidad"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="money" name="pre" value="<%= item.getPrecio() %>" placeholder="Precio"></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><select name="categoria">
                            <option selected value="<%= item.getCategoria()%>"disabled><%= item.getCategoria() %></option>
                            <option value="Bebidas">Bebidas</option>
                            <option value="Secos">Secos</option>
                            <option value="Frutas">Fritas</option>
                            <option value="Laminas">Laminas</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
        </div>
        
    </body>
</html>
