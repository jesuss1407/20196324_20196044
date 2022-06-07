<%@ page import="com.example.lab7_20196324_20196044.beans.BActor" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<jsp:useBean type="java.util.ArrayList<com.example.lab7_20196324_20196044.beans.BActor>" scope="request" id="listaActor"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" charset="UTF-8"/>
    <title>Ficha</title>
    <style type="text/css">
        .remarca {
            font-family: "Times New Roman";
            font-size: 20px;
            font-style: italic;
            line-height: normal;
            font-weight: bold;
            font-variant: normal;
            text-transform: uppercase;
            color: #000000;
        }
        .oficio {
            font-family: "Times New Roman";
            font-size: 15px;
            font-style: italic;
            line-height: normal;
            font-weight: bold;
            font-variant: normal;
            text-transform: uppercase;
            color: #000000;
        }
        .blanco {
            font-family: "Times New Roman";
            font-size: 15px;
            line-height: normal;
            font-weight: bold;
            font-variant: normal;
            text-transform: uppercase;
            color: #FFFFFF;
        }
    </style>
</head>
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
                for (BActor actor : listaActor) {
            %>
            <tr>
                <td><%=actor.getActor_id()%>
                </td>
                <td><%=actor.getNombre()%>
                </td>
                <td><%=actor.getPeliculas_realizadas()%>
                </td>



            </tr>
            <%
                }
            %>
        </table>
    </div>
</div>

<jsp:include page="/script.jsp"/>
</body>

</html>