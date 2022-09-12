<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="title" %>
<style>
    .card{
        align-self: center;
        display: inline;
        box-shadow: 3px 3px 4px 1px #9999ff;
        margin: 5px;
        margin-right: 5px;
        padding: 10px;
        width: 100%;
        height: auto;
        margin-bottom: 10px;
    }
    *{
        margin: 0px;
    }
    .header{
        height: auto;
        text-align: left;
        background-color: #9999ff;

        width: 100%;
        bottom: 0;
        opacity: 100%;
        margin: 0px;
    }
    .header h2{
        padding: 10px;
        margin-left: 10px;
        color: black;
    }
</style>
<header class="header">
    <h2 id="title">${title}</h2>
    <div>
        <a href="#">DashBoard</a>
    </div>
</header>

