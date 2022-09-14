<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="setores" tagdir="/WEB-INF/tags/setores/" %>
<%@taglib prefix="h" tagdir="/WEB-INF/tags/header/" %>
<%@taglib prefix="f" tagdir="/WEB-INF/tags/footer/" %>


<!DOCTYPE>
<jsp:useBean id="setoresService" scope="page" class="com.github.s2_web.model.service.SetorService" />
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width"/>
        <script src="js/libs/Chart.js/chart.js" type="text/javascript"></script>
        <title>S2_web</title>
    </head>
    <body>
        <h:header title="Sistema Web: Alto Grande"></h:header>
        <setores:setores setores="${setoresService.setores}"></setores:setores>
        <f:footer></f:footer>
        <script src="js/index.js" type="text/javascript"></script>
    </body>
</html>
