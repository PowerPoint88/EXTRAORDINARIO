
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Altas</h1>
        <div class="container" >
            <br>
            <div class="containerRegistro" >
                <form method="post" name="formulario" action="guardar.jsp" >
                                Contraseña: <input type="password" name="pass">
                                <br>
                                Nombre:<input type="text" name="ciudad">
                                <br>
                                puesto:<select id="puesto">
                                    <option name="puesto" value="jefe">Jefe</option>
                                    <option name="puesto" value="empleado">Empleado</option>
                                </select>
                                
                    <input type="submit" value="Alta" >
                </form>
            </div>
            <br>
            <div class="containerConsulta" >
                <br>
                <a href="index.html" >Consultar la Tabla de Usuarios</a>
            </div>
        </div>
    </body>
</html>
