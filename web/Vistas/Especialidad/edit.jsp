<%-- 
    Document   : edit
    Created on : 12/09/2019, 12:27:48
    Author     : mflb0
--%>

<%@page import="Clases.Especialidad"%>
<%@page import="ModeloDAO.EspecialidadDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Especialidad</title>
    </head>
    <body>
        <div>
            <%
                EspecialidadDAO especialidadDAO = new EspecialidadDAO();
                int id = Integer.parseInt((String)request.getAttribute("idEspecialidad"));
                Especialidad especialidad=(Especialidad) especialidadDAO.list(id);
                
            %>
            <h1 class="bg-primary text-center">Editar Especialidad</h1>
            <form action="ControladorEspecialidad">
                <div class="form-group-sm">
                <label for="nombre" class="col-md-1">NOMBRE:</label>
                <input class="form-control" type="text" name="txtNombre" value="<%=especialidad.getNombre()%>"><br>
                </div>
                <label for="descripcion" class="col-md-1">DESCRIPCION:</label>
                <input class="form-control" type="text" name="txtDescripcion" value="<%=especialidad.getDescripcion()%>"><br>
                <input type="hidden" name="txtId" value="<%=especialidad.getIdEspecialidad()%>"><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorEspecialidad?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
