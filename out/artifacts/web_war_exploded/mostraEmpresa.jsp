<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 30/05/19
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<c:url value="/mostraEmpresa" var="linkServletNovaEmpresa"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>Empresas cadastradas</h4>
    <ul>
        <c:forEach items="${empresas}" var="empresa">

            <li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
                <a href="/gerenciador/mostraEmpresa?id=${empresa.id}">Alterar</a>
                <a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remover</a>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
