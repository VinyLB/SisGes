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
        <title>Editar Tipo de Técnico</title>
    </head>
    <body>
        <%
          TipoTecnicoDAO tipoTecnicoDAO=new TipoTecnicoDAO();
          int id=Integer.parseInt((String)request.getAttribute("idTipoTecnico"));
          TipoTecnico tipoTecnico=(TipoTecnico)tipoTecnicoDAO.list(id);
        %>
        <h1>Editar datos del Tipo de Técnico</h1>
        <form action="ControladorTipoTecnico">
                Tipo:<br>
                <input type="text" name="txtNombre" value="<%= tipoTecnico.getNombre()%>"><br>
                Descripción:<br>
                <input type="text" name="txtDescripcion" value="<%= tipoTecnico.getDescripcion()%>"><br>
                <input type="hidden" name="txtIdTipoTecnico" value="<%= tipoTecnico.getIdTipoTecnico()%>"><br>
                <input type="submit" name="accion" value="Actualizar"><br>
        </form>
    </body>
</html>
