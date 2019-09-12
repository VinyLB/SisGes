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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Especialidad</h1>
            <form action="ControladorEspecialidad">
                NOMBRE:<br>
                <input type="text" name="txtNombre"><br>
                DESCRIPCION:<br>
                <input type="text" name="txtDescripcion"><br>
                <input type="submit" name="accion" value="Agregar"><br>
                <a href="ControladorEspecialidad?accion=listar">Regresar</a>
            </form>
        </div>
        
    </body>
</html>
