
<%@ page import="com.example.cinestudiar.beans.BCarrito" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<jsp:useBean type="java.util.ArrayList<com.example.cinestudiar.beans.BCarrito>" scope="request" id="carritoCliente"/>
<html>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
    <jsp:include page="cabecera_usuario.jsp"/>
<body>

<div class='container'>

    <div class="pb-5 pt-4 px-3 titlecolor">
        <div class="col-lg-6">
            <h1 class='text-light'>Reporte</h1>
        </div>
    </div>
    <div class="tabla">
        <table class="table table-dark table-transparent table-hover">
            <thead>
            <th>ID</th>
            <th>Nombre</th>
            <th>Categorias</th>
            <th>Peliculas</th>
            </thead>
            <%
                for (BCarrito carrito : carritoCliente) {
            %>
            <tr>
                <td><%=carrito.getDia_funcion()%>
                </td>
                <td><%=carrito.getCantidad_por_funcion()%>
                </td>
                <td><%=carrito.getNombres()%>
                </td>



            </tr>
            <%
                }
            %>
        </table>
    </div>
</div>


</body>

</head>
</html>
