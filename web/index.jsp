<%-- 
    Document   : index
    Created on : 12/09/2019, 12:32:10
    Author     : mflb0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container col-md-3">
            <a class="btn btn-block btn-lg btn-primary" href="ControladorCliente?accion=listar">Listar Clientes</a><br>
            <a class="btn btn-block btn-lg btn-primary" href="ControladorEspecialidad?accion=listar">Listar Especialidad</a><br/>
            <a class="btn btn-block btn-lg btn-primary" href="ControladorTipoTecnico?accion=listar">Listar Tipo de Tecnicos</a><br/>
            <a class="btn btn-block btn-lg btn-primary" href="ControladorCargo?accion=listar">Listar Cargo</a><br/>
        </div>
    </body>
</html>
