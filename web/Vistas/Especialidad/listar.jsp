<%@page import="java.util.Iterator"%>
<%@page import="Clases.Especialidad"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EspecialidadDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Especialidades</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Especialidades</h1>
            <div class="container col-md-2">
            <a class="btn btn-block btn-lb btn-primary" href="ControladorEspecialidad?accion=add">Agregar Nuevo</a><br><br>
            <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">DESCRIPCION</th>
                        <th class="text-center">ACCION</th>
                    </tr>
                </thead>
                <%
                    EspecialidadDAO dao = new EspecialidadDAO();
                    List<Especialidad>list=dao.listar();
                    Iterator<Especialidad>iter=list.iterator();
                    Especialidad especialidad = null;
                    while(iter.hasNext()){
                        especialidad=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=especialidad.getIdEspecialidad()%></td>
                        <td class="text-left"><%=especialidad.getNombre()%></td>
                        <td class="text-left"><%=especialidad.getDescripcion()%></td>
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorEspecialidad?accion=Editar&idEspecialidad=<%= especialidad.getIdEspecialidad()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorEspecialidad?accion=Eliminar&idEspecialidad=<%= especialidad.getIdEspecialidad()%>">Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            </div>
                <br>
                <a class="btn btn-block btn-warning" href="ControladorEspecialidad?accion=Inicio">Regresar</a>
            </div>
        </div>
    </body>
</html>
