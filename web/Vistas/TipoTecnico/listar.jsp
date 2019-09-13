<%-- 
    Document   : listar
    Created on : 12/09/2019, 16:02:39
    Author     : Xavier
--%>

<%@page import="Clases.TipoTecnico"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.TipoTecnicoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista Tipo de Técnicos</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Tipo de Tecnicos</h1>
            <div class="container col-md-2">
            <a class="btn btn-block btn-lg btn-primary" href="ControladorTipoTecnico?accion=add">Agregar nuevo</a>
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
                    TipoTecnicoDAO tipoTecnicoDAO=new TipoTecnicoDAO();
                    List<TipoTecnico>list=tipoTecnicoDAO.listar();
                    Iterator<TipoTecnico>iter=list.iterator();
                    TipoTecnico tipoTecnico=null;
                    while(iter.hasNext()){
                        tipoTecnico=iter.next();
                    %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=tipoTecnico.getIdTipoTecnico()%></td>
                        <td class="text-left"><%=tipoTecnico.getNombre()%></td>
                        <td class="text-left"><%=tipoTecnico.getDescripcion()%></td>
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorTipoTecnico?accion=editar&id=<%=tipoTecnico.getIdTipoTecnico()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorTipoTecnico?accion=eliminar&id=<%=tipoTecnico.getIdTipoTecnico()%>">Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                </div>
                <br>
                <a class="btn btn-block btn-lg btn-warning" href="ControladorTipoTecnico?accion=Inicio">Regresar</a>
            </div>
        </div>
    </body>
</html>
