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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                ClienteDAO clienteDAO = new ClienteDAO();
                String id = (String)request.getAttribute("cedulaCliente");
                Cliente cliente=(Cliente) clienteDAO.list(id);                
            %>
            <h1>Editar Especialidad</h1>
            <form action="ControladorCliente">
                NOMBRE:<br>
                <input type="text" name="txtNombre" value="<%=cliente.getNombre()%>"><br>
                APELLIDO:<br>
                <input type="text" name="txtApellido" value="<%=cliente.getApellido()%>"><br>
                USUARIO:<br>
                <input type="text" name="txtUsuario" value="<%=cliente.getUsuario()%>"><br>
                CLAVE:<br>
                <input type="text" name="txtClave" value="<%=cliente.getClave()%>"><br>
                TELEFONO:<br>
                <input type="text" name="txtTelefono" value="<%=cliente.getTelefono()%>"><br>
                DIRECCION:<br>
                <input type="text" name="txtDireccion" value="<%=cliente.getDireccion()%>"><br>
                CORREO:<br>
                <input type="text" name="txtCorreo" value="<%=cliente.getCorreo()%>"><br>
                <input type="hidden" name="txtCedulaCliente" value="<%=cliente.getCedula()%>"><br>
                <input type="submit" name="accion" value="Actualizar"><br>
                <a href="ControladorCliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
