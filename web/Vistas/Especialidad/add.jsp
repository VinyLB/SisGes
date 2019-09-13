<%-- 
    Document   : add
    Created on : 12/09/2019, 12:27:38
    Author     : mflb0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Agregar Especialidad</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Agregar Especialidad</h1>
            <form action="ControladorEspecialidad">
                <div class="form-group-sm">
                <label for="nombre" class="col-md-1">NOMBRE:</label>
                <input class="form-control" type="text" name="txtNombre"><br>
                </div>
                <label for="descripcion" class="col-md-1">DESCRIPCION:</label>
                <input class="form-control" type="text" name="txtDescripcion"><br>
                <input type="submit" name="accion" value="Agregar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorEspecialidad?accion=listar">Regresar</a>
            </form>
        </div>
        
    </body>
</html>
