<%-- 
    Document   : add
    Created on : 13/09/2019, 18:52:54
    Author     : mflb0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Nuevo Equipo</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Agregar Equipo</h1>
            <form action="ControladorEquipo">
                <div class="form-group-sm">
                <label for="cedula" class="col-md-1">TIPOEQUIPO:</label>
                <input class="form-control" type="text" name="txtTipoEquipo"><br>
                </div>
                <label for="nombre" class="col-md-1">MARCA:</label>
                <input class="form-control" type="text" name="txtMarca"><br>
                <label for="apellido" class="col-md-1">MODELO</label>
                <input class="form-control" type="text" name="txtModelo"><br>
                <label for="usuario" class="col-md-1">SERIE:</label>
                <input class="form-control" type="text" name="txtSerie"><br>
                <label for="clave" class="col-md-1">CEDULA CLIENTE:</label>
                <input class="form-control" type="text" name="txtCedulaCliente"><br>
                
                <br>
                <input type="submit" name="accion" value="Agregar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorCliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
