<%-- 
    Document   : edit
    Created on : 13/09/2019, 18:53:05
    Author     : mflb0
--%>

<%@page import="Clases.Equipo"%>
<%@page import="ModeloDAO.EquipoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Equipo</title>
    </head>
    <body>
        <div>
            <%
                EquipoDAO equipoDAO = new EquipoDAO();                
                int id = Integer.parseInt((String)request.getAttribute("idEquipo"));
                Equipo equipo=(Equipo) equipoDAO.list(id);                
            %>
            <h1 class="bg-primary text-center">Editar Equipo</h1>
            <form action="ControladorEquipo">
                <div class="form-group-sm">
                <label for="nombre" class="col-md-1">TIPO EQUIPO:</label>
                <input class="form-control" type="text" name="txtTipoEquipo" value="<%=equipo.getTipoEquipo()%>"><br>
                </div>
                <label for="apellido" class="col-md-1">MARCA:</label>
                <input class="form-control" type="text" name="txtMarca" value="<%=equipo.getMarca()%>"><br>
                <label for="usuario" class="col-md-1">MODELO:</label>
                <input class="form-control" type="text" name="txtModelo" value="<%=equipo.getModelo()%>"><br>
                <label for="clave" class="col-md-1">SERIE:</label>
                <input class="form-control" type="text" name="txtSerie" value="<%=equipo.getSerie()%>"><br>
                <label for="telefono" class="col-md-1">CEDULA CLIENTE</label>
                <input class="form-control" type="text" name="txtCedulaCliente" value="<%=equipo.getCliente().getCedula()%>"><br>
                <input type="hidden" name="txtIdEquipo" value="<%=equipo.getIdEquipo()%>"><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-primary"><br><br>
                <a class="btn btn-warning" href="ControladorEquipo?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
