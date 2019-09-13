<%-- 
    Document   : add
    Created on : 12/09/2019, 19:23:06
    Author     : mflb0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Cliente</h1>
            <form action="ControladorCliente">
                CEDULA:<br>
                <input type="text" name="txtCedulaCliente"><br>
                NOMBRE:<br>
                <input type="text" name="txtNombre"><br>
                APELLIDO:<br>
                <input type="text" name="txtApellido"><br>
                USUARIO:<br>
                <input type="text" name="txtUsuario"><br>
                CLAVE:<br>
                <input type="text" name="txtClave"><br>
                TELEFONO:<br>
                <input type="text" name="txtTelefono"><br>
                DIRECCION:<br>
                <input type="text" name="txtDireccion"><br>
                CORREO:<br>
                <input type="text" name="txtCorreo"><br>
                <input type="submit" name="accion" value="Agregar"><br>
                <a href="ControladorCliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
