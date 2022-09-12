<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="relatorio" type="com.github.s2_web.model.entities.Relatorio" required="true"%>
<%@attribute name="setor" type="com.github.s2_web.model.entities.Setor" required="true"%>
<style>
    .relatorio :hover{
        background-color: #9999ff;
        color: white;
    }
    .relatorio a{
        display: block;
        text-decoration: none;
        padding: 15px;

        background-color: white;
    }
</style>
<div class="relatorio">
    <a href="relatorio?relatorio= ${relatorio.nome}&setor=${setor.nome} ">
        <p><h5>${relatorio.nome}</h5></p>
    </a>    
</div>

