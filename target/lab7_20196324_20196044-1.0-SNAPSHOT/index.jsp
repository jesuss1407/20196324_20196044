<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
<form  name="form" action="ficha.php" method="POST">
    <?php
    $fecha = date('d-m-Y');
?>
    <br>
    <br>
    <table align="center" class="remarca"><tr><td>Reporte de futuros actores POPCORN S.A.C<?php echo $fecha;?></td>
        <br>
        <td class="oficio"><?php echo;?></td></tr></table>
    <br>
    <table width="1000" border="1" align="center">
        <th class="blanco" width="32" tbody style="background: rgba(0, 0, 250, 150); border: 1px solid rgba(200, 100, 0, 0.3);">Id</th>
        <th class="blanco" width="120" tbody style="background: rgba(0, 0, 250, 150); border: 1px solid rgba(200, 100, 0, 0.3);">Nombre</th>
        <th class="blanco" width="100" tbody style="background: rgba(0, 0, 250, 150); border: 1px solid rgba(200, 100, 0, 0.3);">N° Categorias</th>
        <th class="blanco" width="100" tbody style="background: rgba(0, 0, 250, 150); border: 1px solid rgba(200, 100, 0, 0.3);">N° Peliculas</th>


        </tr>
        <tr>
            <td height="80" align="center">1</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>


        </tr>
        <tr>
            <td height="80" align="center">1</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>


        </tr>
        <tr>
            <td height="80" align="center">1</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>


        </tr>
        <tr>
            <td height="80" align="center">2</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>


        </tr>
    </table>


</form>
</body>
</html>