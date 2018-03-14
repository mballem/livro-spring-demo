<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="container">

    <div class="jumbotron">
        <h1>Multi-Tenancy com SpringData JPA</h1>
        <h2>Aplicação demo do livro 'Spring-Data JPA, Persistência Simples e Eficaz'! </h2>
        <security:authorize access="!isAuthenticated()">
        <p>Selecione o cliente (Tenant) que deseja acessar</p>
        </security:authorize>
        <security:authorize access="isAuthenticated()">
        <p>Cliente selecionado: <span class="label label-success">${tenantId}</span></p>
        </security:authorize>
    </div>
    <span></span>

    <security:authorize access="!isAuthenticated()">
        <div class="row">
            <a href="<c:url value="/tenant_1/login"/>" title="Tenant 1" class="btn btn-default btn-lg btn-block">
                Tenant 1 (HSQL)
            </a>
            <a href="<c:url value="/tenant_2/login"/>" title="Tenant 2" class="btn btn-default btn-lg btn-block">
                Tenant 2 (H2)
            </a>
        </div>
    </security:authorize>

    <security:authorize access="hasRole('USER')">
        <a class="btn btn-primary btn-lg" href="<c:url value="/${tenantId}/contato"/>" role="button">
            Acessar Contatos &raquo;</a>
    </security:authorize>
</div>
</div>
