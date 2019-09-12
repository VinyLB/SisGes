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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Tipo de Tecnicos</h1>
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
                    TipoTecnicoDAO tipoTecnicoDAO=new TipoTecnicoDAO();
                    List<TipoTecnico>list=tipoTecnicoDAO.listar();
                    Iterator<TipoTecnico>iter=list.iterator();
                    TipoTecnico tipoTecnico=null;
                    while(iter.hasNext()){
                        tipoTecnico=iter.next();
                    %>
                <tbody>
                    <tr>
                        <td><%=tipoTecnico.getIdTipoTecnico()%></td>
                        <td><%=tipoTecnico.getNombre()%></td>
                        <td><%=tipoTecnico.getDescripcion()%></td>
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