<%@tag import="com.github.s2_web.model.entities.Setor"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@tag import="java.util.List"%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="setor" tagdir="/WEB-INF/tags/setores/setor" %>
<%@attribute name="setores" type="List<Setor>" required="true"%>
<div>
    <c:forEach var="setor" items="${setores}">
        <setor:setor setor="${setor}"></setor:setor>
    </c:forEach>
</div>