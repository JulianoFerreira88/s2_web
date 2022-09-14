<%@tag import="java.util.TreeMap"%>
<%@tag import="java.util.HashMap"%>
<%@tag import="java.util.List"%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="js/libs/Chart.js/chart.js" type="text/javascript"></script>
<%@attribute name="id"%>
<%@attribute name="tituloGrafico" required="true"%>
<%@attribute name="data" required="true" type="TreeMap<String, Object>"%>
<%@attribute name="dados" type="List<String>" required="true" %>
<%@attribute name="etiquetas" type="List<String>" required="true" %>
<%@attribute name="tituloCategoria" required="true" %>
<script>
    function onChartClick() {

        if (chart.config.type === 'line') {
            chart.config.type = 'bar';
            chart.update();
        } else if (chart.config.type === 'bar') {
            chart.config.type = 'line';
            chart.update();
        }
    }
</script>
<style>

    .card-table{
        margin: 5px;
        margin-bottom: 10px;
        padding: 10px;
        box-shadow: 3px 3px 4px 1px #9999ff;
        text-align: justify-all;
        width: auto;
        height: auto;
    }

    table{
        width: 100%;
        text-align: justify-all;

    }

    div table tr td h3{
        padding: 10px;
        background-color: #9999ff;
    }

    tbody tr td{
        text-align: center;

    }
    .border-cell{
        border-bottom: 1px solid #9999ff;
    }

</style>

<div class="card-table">
    <table>
        <tr>
            <td>
                <h3>
                    Período
                </h3>
            </td>
            <td>
                <h3>
                    VALOR
                </h3>
            </td>
        </tr>

        <c:forEach var="k" items="${data}">
            <tr class="border-cell">
                <td>${k.key}</td>
                <td>${k.value}</td>
            </tr>

        </c:forEach>

    </table>
</div>

<canvas id="chart" class="card" onclick="onChartClick()"></canvas>
<script>

    var ctx = document.getElementById('${id}');
    var dados = [];
    var etiquetas = [];

    <c:forEach items="${etiquetas}" var="etiqueta">
    etiquetas.push('${etiqueta}');
    </c:forEach>
    <c:forEach items="${dados}" var="dado">
    dados.push('${dado}');
    </c:forEach>


    var config = {
        type: 'line',
        data: {
            labels: etiquetas,
            datasets: [{
                    label: '${tituloCategoria}',
                    data: dados,
                    borderColor: ['#9999ff'],
                    backgroundColor: ['#9999ff'],
                    borderWidth: 2
                }]
        },
        options: {
            showAllTooltips: true,
            scales: {

            },
            responsive: true,
            plugins: {
                legend: {
                    position: 'bottom'
                },
                title: {
                    display: true,
                    text: '${tituloGrafico}'
                }
            }
        }
    };


    var chart = new Chart(ctx, config);



</script>