<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 30/05/19
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${linkServletNovaEmpresa}" method="POST">
        Nome: <input type="text" name="nome" value="${empresa.nome}">
        Data abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
        <input type="hidden" name="id" value="${empresa.id}">
        <button>Enviar</button>
    </form>
</body>
</html>
