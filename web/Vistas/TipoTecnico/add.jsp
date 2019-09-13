<%-- 
    Document   : add
    Created on : 12/09/2019, 16:01:56
    Author     : Xavier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Añadir TipoTecnico</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Agregar el Tipo de Técnico</h1>
            <form action="ControladorTipoTecnico">
                <div class="form-group-sm">
                <label for="tipo" class="col-md-1">Tipo:</label>
                <input class="form-control" type="text" name="txtNombre"><br>
                </div>
                <label for="descripcion" class="col-md-1">Descripción:</label>
                <input class="form-control" type="text" name="txtDescripcion"><br>
                <input type="submit" name="accion" value="Agregar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorTipoTecnico?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
