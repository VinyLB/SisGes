<%-- 
    Document   : edit
    Created on : 12/09/2019, 19:23:15
    Author     : mflb0
--%>

<%@page import="Clases.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Cliente</title>
    </head>
    <body>
        <div>
            <%
                ClienteDAO clienteDAO = new ClienteDAO();
                String id = (String)request.getAttribute("cedulaCliente");
                Cliente cliente=(Cliente) clienteDAO.list(id);                
            %>
            <h1 class="bg-primary text-center">Editar Cliente</h1>
            <form action="ControladorCliente">
                <div class="form-group-sm">
                <label for="nombre" class="col-md-1">NOMBRE:</label>
                <input class="form-control" type="text" name="txtNombre" value="<%=cliente.getNombre()%>"><br>
                </div>
                <label for="apellido" class="col-md-1">APELLIDO:</label>
                <input class="form-control" type="text" name="txtApellido" value="<%=cliente.getApellido()%>"><br>
                <label for="usuario" class="col-md-1">USUARIO:</label>
                <input class="form-control" type="text" name="txtUsuario" value="<%=cliente.getUsuario()%>"><br>
                <label for="clave" class="col-md-1">CLAVE:</label>
                <input class="form-control" type="text" name="txtClave" value="<%=cliente.getClave()%>"><br>
                <label for="telefono" class="col-md-1">TELEFONO:</label>
                <input class="form-control" type="text" name="txtTelefono" value="<%=cliente.getTelefono()%>"><br>
                <label for="direccion" class="col-md-1">DIRECCIÓN:</label>
                <input class="form-control" type="text" name="txtDireccion" value="<%=cliente.getDireccion()%>"><br>
                <label for="correo" class="col-md-1">CORREO:</label>
                <input class="form-control" type="text" name="txtCorreo" value="<%=cliente.getCorreo()%>"><br>
                <input type="hidden" name="txtCedulaCliente" value="<%=cliente.getCedula()%>"><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorCliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
