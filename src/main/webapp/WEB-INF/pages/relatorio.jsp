<%@taglib prefix="grafico" tagdir="/WEB-INF/tags/graficos/barchart/" %>

<%@taglib prefix="h" tagdir="/WEB-INF/tags/header/" %>
<%@taglib prefix="f" tagdir="/WEB-INF/tags/footer/" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width"/>
        <title>Relatório</title>
    </head>
    <body>
        <h:header title="${data.nome}"></h:header>

        <grafico:barChart id="chart" dados="${data.values}" 
                          data="${data.data}"
                          tituloGrafico="${data.nome}" etiquetas="${data.labels}" tituloCategoria="${data.nome}"></grafico:barChart>

        <f:footer></f:footer>
    </body>
</html>
