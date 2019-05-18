<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Agregar Usuario</title>
    </head>
    <body>
      <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Agregar nuevo registro</h4>
                 </div>
            </div>
            <div class="card-body">
                    <form  method="POST">
                        <label>ID:</label>
                        <input type="text" name="id" class="form-control" >
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control" >
                        <label>Apellido</label>
                        <input type="text" name="apellido" class="form-control" >
                        <label>Correo</label>
                        <input type="text" name="correo" class="form-control">
                        <label>Direccion</label>
                        <input type="text" name="direccion" class="form-control">
                        <br>
                        <input type="submit" value="Agregar" class="btn btn-dark">
                        <a href="index.htm" class="btn btn-primary">Regresar</a>
                    </form>
            </div>
          
      </div>
    </body>
</html>
