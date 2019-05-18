<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto MVC con Spring</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="agregar.htm" class="btn btn-success">Nuevo Registro</a>
                   
                </div>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                         <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>      
                                <th>Correo</th>
                                <th>Direccion</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="lista" items="${Lista}">
                            <tr>
                                <td>${lista.id}</td>
                                <td>${lista.nombre} ${lista.apellido}</td>
                                <td>${lista.correo}</td>
                                <td>${lista.direccion}</td>
                                <td><a href="editar.htm?id=${lista.id}" class="btn btn-warning">Editar</a>
                                    <a href="eliminar.htm?id=${lista.id}" class="btn btn-danger">Eliminar</a></td>
                            </tr>
                          </c:forEach> 
                        </tbody>
                    </table>
            
         </div>
        </div>
        
    </body>
</html>
