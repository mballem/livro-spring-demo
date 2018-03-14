<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="container">
    <security:authorize access="!isAuthenticated()">

        <c:url value="/${tenantId}/login" var="loginUrl" />
        <form action="${loginUrl}" method="post" class="form-signin">

            <h2 class="form-signin-heading">Login</h2>
            <label for="username" class="sr-only">Usuário</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Usuário" required autofocus
                   value="demo">
            <label for="password" class="sr-only">Senha</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Senha" required
                   value="demo">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-success">Sign in</button>
            <c:if test="${param.error != null}">
                <span class="label label-danger">Invalid username and password.</span>
            </c:if>
        </form>
    </security:authorize>

    <security:authorize access="hasRole('USER')">
        <a class="btn btn-primary btn-lg" href="<c:url value="/${tenantId}/contato"/>" role="button">Learn
            more &raquo;</a>
    </security:authorize>
</div>
