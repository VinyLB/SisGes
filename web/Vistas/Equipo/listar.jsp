<%-- 
    Document   : listar
    Created on : 13/09/2019, 18:53:17
    Author     : mflb0
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Clases.Equipo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EquipoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Equipos</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">EQUIPOS</h1>
            <div class="container col-md-2">
                <a class="btn btn-block btn-lg btn-primary" href="ControladorEquipo?accion=add">Agregar Nuevo</a><br><br>
            <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">TIPO EQUIPO</th>
                        <th class="text-center">MARCA</th>
                        <th class="text-center">MODELO</th>
                        <th class="text-center">SERIE</th>
                        <th class="text-center">CEDULA CLIENTE</th>
                        <th class="text-center">NOMBRE CLIENTE</th>
                        <th class="text-center">ACCION</th>
                    </tr>
                </thead>
                <%
                    EquipoDAO dao = new EquipoDAO();
                    List<Equipo>list=dao.Listar();
                    Iterator<Equipo>iter=list.iterator();
                    Equipo equipo = null;
                    while(iter.hasNext()){
                        equipo=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=equipo.getIdEquipo()%></td>
                        <td class="text-left"><%=equipo.getTipoEquipo()%></td>
                        <td class="text-left"><%=equipo.getMarca()%></td>
                        <td class="text-center"><%=equipo.getModelo()%></td>
                        <td class="text-center"><%=equipo.getSerie()%></td>
                        <td class="text-center"><%=equipo.getCliente().getCedula()%></td>
                        <td class="text-center"><%=equipo.getCliente().getNombreCompleto()%></td>
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorEquipo?accion=Editar&idEquipo=<%= equipo.getIdEquipo()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorEquipo?accion=Eliminar&idEquipo=<%= equipo.getIdEquipo()%>">Remover</a>
                        </td>
                    </tr>  
                    <%}%>
                </tbody>
            </table>
            </div>
                <br>
            <a class="btn btn-block btn-lg btn-warning" href="ControladorEquipo?accion=Inicio">Regresar</a>
            </div>
                
        </div>
    </body>
</html>
