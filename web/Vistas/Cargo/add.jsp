<%-- 
    Document   : add
    Created on : 12/09/2019, 20:10:46
    Author     : DELL 14
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
            <h1>Agregar Cargo</h1>
            <form action="ControladorCargo">
                NOMBRE:<br>
                <input type="text" name="txtNombre"><br>
                DESCRIPCION:<br>
                <input type="text" name="txtDescripcion"><br>
                <input type="submit" name="accion" value="Agregar"><br>
                <a href="ControladorCargo?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
