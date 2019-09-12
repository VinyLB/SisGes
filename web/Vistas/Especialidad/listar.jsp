<%@page import="java.util.Iterator"%>
<%@page import="Clases.Especialidad"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EspecialidadDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Especialidades</h1>
            <a href="ControladorEspecialidad?accion=add">Agregar Nuevo</a>
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
                    EspecialidadDAO dao = new EspecialidadDAO();
                    List<Especialidad>list=dao.listar();
                    Iterator<Especialidad>iter=list.iterator();
                    Especialidad especialidad = null;
                    while(iter.hasNext()){
                        especialidad=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%=especialidad.getIdEspecialidad()%></td>
                        <td><%=especialidad.getNombre()%></td>
                        <td><%=especialidad.getDescripcion()%></td>
                        <td>
                            <a>Editar</a>
                            <a>Remover</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
