<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="relatorio" tagdir="/WEB-INF/tags/relatorios/relatorio/"  %>
<%@attribute name="setor" type="com.github.s2_web.model.entities.Setor" required="true"%>
<style>
    .setor{
        text-decoration: none;
        display: block;
        padding: 20px;
        background-color: white;
        box-shadow: 2px 2px 3px #9999ff;
        text-align: center;

    }
    a{
        text-decoration: none;
    }
    a:hover{
        background-color: #9999ff;
        color: white;

    }
    a:visited{
        color: black;
    }
    a:link{
        color: black;
    }
    .relatorios{
        text-align: center;
        box-shadow: 2px 2px 3px #9999ff;
        padding: 5px;
        margin: 10px;
        align-self: center;
        text-align: left;
    }
    .container{
        padding: 5px;
        margin: 5px;
        height: auto;
    }
</style>

<div class="container">
    <a href="#" class="setor"  onclick="onSetorClick('${setor.nome}')">
        ${setor.nome}
    </a>
    <div id="${setor.nome}" hidden="true" class="relatorios">
        <ol>
            <c:forEach var="relatorio" items="${setor.relatorios}">


                <li>
                    <relatorio:relatorio relatorio="${relatorio}" setor="${setor}"></relatorio:relatorio>

                    </li>

            </c:forEach>
        </ol>

    </div>
</div>
