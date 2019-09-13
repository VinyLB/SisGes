<%-- 
    Document   : edit
    Created on : 12/09/2019, 16:02:14
    Author     : Xavier
--%>

<%@page import="Clases.TipoTecnico"%>
<%@page import="ModeloDAO.TipoTecnicoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Tipo de Técnico</title>
    </head>
    <body>
        <div>
        <%
          TipoTecnicoDAO tipoTecnicoDAO=new TipoTecnicoDAO();
          int id=Integer.parseInt((String)request.getAttribute("idTipoTecnico"));
          TipoTecnico tipoTecnico=(TipoTecnico)tipoTecnicoDAO.list(id);
        %>
        <h1 class="bg-primary text-center">Editar datos del Tipo de Técnico</h1>
        <form action="ControladorTipoTecnico">
            <div class="form-group-sm">
                <label for="tipo" class="col-md-1">Tipo:</label>
                <input class="form-control" type="text" name="txtNombre" value="<%= tipoTecnico.getNombre()%>"><br>
            </div>
                <label for="descripcion" class="col-md-1">Descripción:</label>
                <input class="form-control" type="text" name="txtDescripcion" value="<%= tipoTecnico.getDescripcion()%>"><br>
                <input type="hidden" name="txtIdTipoTecnico" value="<%= tipoTecnico.getIdTipoTecnico()%>"><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorTipoTecnico?accion=listar">Regresar</a>
        </form>
        </div>
    </body>
</html>
