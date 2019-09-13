<%-- 
    Document   : listar
    Created on : 12/09/2019, 20:11:39
    Author     : DELL 14
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Clases.Cargo"%>
<%@page import="java.util.List"%>
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
            <h1>Cargos</h1>
            <a href="Controladorcargo?accion=add">Agregar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>DESCRIPCION</th>
                        <th>ACCION</th>
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
                        <td><%=car.getIdCargo()%></td>
                        <td><%=car.getNombre()%></td>
                        <td><%=car.getDescripcion()%></td>
                        <td>
                            <a href="Controladorcargo?accion=Editar&idCargo=<%= car.getIdCargo()%>">Editar</a>
                            <a href="Controladorcargo?accion=Eliminar&idCargo=<%= car.getIdCargo()%>">Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <a href="Controladorcargo?accion=Inicio">Regresar</a>

        </div>
    </body>
</html>
