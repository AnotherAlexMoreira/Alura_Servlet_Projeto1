<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 30/05/19
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${linkServletNovaEmpresa}" method="POST">
        Nome: <input type="text" name="nome">
        Data abertura: <input type="text" name="data">

        <button>Enviar</button>
    </form>
</body>
</html>
