<%@tag import="java.util.TreeMap"%>
<%@tag import="java.util.function.Predicate"%>
<%@tag import="java.util.ArrayList"%>
<%@tag import="java.util.Set"%>
<%@tag import="java.util.Comparator"%>
<%@tag import="java.util.Arrays"%>
<%@tag import="java.util.Collections"%>
<%@tag import="java.util.function.Function"%>
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
<style>
    .card{
        align-self: center;
        display: inline;
        box-shadow: 3px 3px 4px 1px #9999ff;
        margin: 5px;
        margin-right: 5px;
        padding: 10px;
        width: 100%;
        height: 200px;
    }
</style>
<%

%>
<c:forEach var="value" items="${data}">
    ${value.key}
    ${value.value}
</c:forEach>