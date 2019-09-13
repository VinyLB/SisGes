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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Clientes</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Clientes</h1>
            <div class="container col-md-2">
                <a class="btn btn-block btn-lg btn-primary" href="ControladorCliente?accion=add">Agregar Nuevo</a><br><br>
            <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="text-center">CEDULA</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">APELLIDO</th>
                        <th class="text-center">USUARIO</th>
                        <th class="text-center">CLAVE</th>
                        <th class="text-center">TELEFONO</th>
                        <th class="text-center">DIRECCION</th>
                        <th class="text-center">CORREO</th>
                        <th class="text-center">ACCION</th>
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
                        <td class="text-center"><%=cliente.getCedula()%></td>
                        <td class="text-left"><%=cliente.getNombre()%></td>
                        <td class="text-left"><%=cliente.getApellido()%></td>
                        <td class="text-center"><%=cliente.getUsuario()%></td>
                        <td class="text-center"><%=cliente.getClave()%></td>
                        <td class="text-center"><%=cliente.getTelefono()%></td>
                        <td class="text-left"><%=cliente.getDireccion()%></td>
                        <td class="text-left"><%=cliente.getCorreo()%></td>
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorCliente?accion=Editar&cedulaCliente=<%= cliente.getCedula()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorCliente?accion=Eliminar&cedulaCliente=<%= cliente.getCedula()%>">Remover</a>
                        </td>
                    </tr>  
                    <%}%>
                </tbody>
            </table>
            </div>
                <br>
            <a class="btn btn-block btn-lg btn-warning" href="ControladorCliente?accion=Inicio">Regresar</a>
            </div>
                
        </div>
    </body>
</html>
