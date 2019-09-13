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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                CargoDAO cargoDAO = new CargoDAO();
                int id = Integer.parseInt((String)request.getAttribute("idCargo"));
                Cargo cargo=(Cargo) cargoDAO.list(id);
                
            %>
            <h1>Editar Cargo</h1>
            <form action="ControladorCargo">
                NOMBRE:<br>
                <input type="text" name="txtNombre" value="<%=cargo.getNombre()%>"><br>
                DESCRIPCION:<br>
                <input type="text" name="txtDescripcion" value="<%=cargo.getDescripcion()%>"><br>
                <input type="hidden" name="txtIdCargo" value="<%=cargo.getIdCargo()%>"><br>
                <input type="submit" name="accion" value="Actualizar"><br>
                <a href="ControladorCargo?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
