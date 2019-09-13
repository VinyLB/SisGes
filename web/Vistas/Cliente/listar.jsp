<%-- 
    Document   : listar
    Created on : 12/09/2019, 19:23:22
    Author     : mflb0
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Clases.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Clientes</h1>
            <a href="ControladorCliente?accion=add">Agregar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>CEDULA</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>USUARIO</th>
                        <th>CLAVE</th>
                        <th>TELEFONO</th>
                        <th>DIRECCION</th>
                        <th>CORREO</th>
                        <th>ACCION</th>
                    </tr>
                </thead>
                <%
                    ClienteDAO dao = new ClienteDAO();
                    List<Cliente>list=dao.listar();
                    Iterator<Cliente>iter=list.iterator();
                    Cliente cliente = null;
                    while(iter.hasNext()){
                        cliente=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%=cliente.getCedula()%></td>
                        <td><%=cliente.getNombre()%></td>
                        <td><%=cliente.getApellido()%></td>
                        <td><%=cliente.getUsuario()%></td>
                        <td><%=cliente.getClave()%></td>
                        <td><%=cliente.getTelefono()%></td>
                        <td><%=cliente.getDireccion()%></td>
                        <td><%=cliente.getCorreo()%></td>
                        <td>
                            <a href="ControladorCliente?accion=Editar&cedulaCliente=<%= cliente.getCedula()%>">Editar</a>
                            <a href="ControladorCliente?accion=Eliminar&cedulaCliente=<%= cliente.getCedula()%>">Remover</a>
                        </td>
                    </tr>  
                    <%}%>
                </tbody>
            </table>

            <a href="ControladorCliente?accion=Inicio">Regresar</a>
        </div>
    </body>
</html>
