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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Nuevo Cliente</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Agregar Cliente</h1>
            <form action="ControladorCliente">
                <div class="form-group-sm">
                <label for="cedula" class="col-md-1">CEDULA:</label>
                <input class="form-control" type="text" name="txtCedulaCliente"><br>
                </div>
                <label for="nombre" class="col-md-1">NOMBRE:</label>
                <input class="form-control" type="text" name="txtNombre"><br>
                <label for="apellido" class="col-md-1">APELLIDO:</label>
                <input class="form-control" type="text" name="txtApellido"><br>
                <label for="usuario" class="col-md-1">USUARIO:</label>
                <input class="form-control" type="text" name="txtUsuario"><br>
                <label for="clave" class="col-md-1">CLAVE:</label>
                <input class="form-control" type="password" name="txtClave"><br>
                <label for="telefono" class="col-md-1">TELEFONO:</label>
                <input class="form-control" type="text" name="txtTelefono"><br>
                <label for="direccion" class="col-md-1">DIRECCIÓN:</label>
                <input class="form-control" type="text" name="txtDireccion"><br>
                <label for="correo" class="col-md-1">CORREO:</label>
                <input class="form-control" type="text" name="txtCorreo"><br>
                <br>
                <input type="submit" name="accion" value="Agregar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorCliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
