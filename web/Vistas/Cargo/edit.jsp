<%-- 
    Document   : edit
    Created on : 12/09/2019, 20:11:28
    Author     : DELL 14
--%>

<%@page import="Clases.Cargo"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Cargo</title>
    </head>
    <body>
        <div>
            <%
                CargoDAO cargoDAO = new CargoDAO();
                int id = Integer.parseInt((String)request.getAttribute("idCargo"));
                Cargo cargo=(Cargo) cargoDAO.list(id);
                
            %>
            <h1 class="bg-primary text-center">Editar Cargo</h1>
            <form action="ControladorCargo">
                <div class="form-group-sm">
                <label for="nombre" class="col-md-1">NOMBRE:</label>
                <input class="form-control" type="text" name="txtNombre" value="<%=cargo.getNombre()%>"><br>
                </div>
                <label for="descripcion" class="col-md-1">DESCRIPCION:</label>
                <input class="form-control" type="text" name="txtDescripcion" value="<%=cargo.getDescripcion()%>"><br>
                <input type="hidden" name="txtIdCargo" value="<%=cargo.getIdCargo()%>"><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-primary"><br>
                <a class="btn btn-warning" href="ControladorCargo?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
