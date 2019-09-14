<%@page import="java.util.Iterator"%>
<%@page import="Clases.Cargo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Cargos</title>
    </head>
    <body>
        <div>
            <h1 class="bg-primary text-center">Cargos</h1>
                <div class="container col-md-2">
            <a class="btn btn-block btn-lb btn-primary" href="ControladorCargo?accion=add">Agregar Nuevo</a>
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
                    CargoDAO dao = new CargoDAO();
                    List<Cargo>list=dao.Listar();
                    Iterator<Cargo>iter=list.iterator();
                    Cargo car = null;
                    while(iter.hasNext()){
                        car=iter.next();                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=car.getIdCargo()%></td>
                        <td class="text-center"><%=car.getNombre()%></td>
                        <td class="text-center"><%=car.getDescripcion()%></td>
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorCargo?accion=Editar&idCargo=<%= car.getIdCargo()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorCargo?accion=Eliminar&idCargo=<%= car.getIdCargo()%>">Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                </div>
                <a class="btn btn-block btn-warning" href="ControladorCargo?accion=Inicio">Regresar</a>

        </div>
        </div>
    </body>
</html>
