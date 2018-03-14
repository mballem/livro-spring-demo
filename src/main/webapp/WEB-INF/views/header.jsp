<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<nav id="header" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>

            <security:authorize access="isAuthenticated()" var="isAuth" />
            <a class="navbar-brand" href="<c:url value="${isAuth ? '/'.concat(tenantId) : '/'}" />">
                Spring-Data JPA :: Persistência Simples e Eficaz
            </a>
        </div>

        <c:if test="${isAuth}">
            <div id="navbar" class="navbar-collapse collapse">
                <c:url value="/logout" var="logout"/>
                <form method="post" class="navbar-form navbar-right" action="${logout}">
                    <button type="submit" class="btn btn-info">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"> Logout</span>
                    </button>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </c:if>
        <!--/.navbar-collapse -->
    </div>
</nav>