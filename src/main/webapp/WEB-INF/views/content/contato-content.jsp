<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h4>
            Bem Vindo
            <security:authentication property="principal.username"/>
            !
        </h4>
        <blockquote>
            Agora você terá a chance de testar algumas operações de CRUD
            apresentadas durante os capítulos do livro. Use a tabela abaixo para executar estas
            operações. O log de auditoria estará visível na janela de edição.
        </blockquote>
    </div>
</div>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button class="btn btn-xs btn-default" data-toggle="modal"
                    data-target="#modal-form" data-whatever="Adicionar"
                    title="Novo Contato">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
            </button>
        </div>
        <c:if test="${status == 1}">
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong>Sucesso!</strong> ${mensagem}
            </div>
        </c:if>

        <datatables:table id="myTableId" url="/${tenantId}/contato/dandelion"
                          lengthMenu="5,10,15,20" lengthChange="true" displayLength="5"
                          processing="true" serverSide="true" filterable="true" filterPlaceholder="none"
                          theme="bootstrap3" cssClass="table table-striped">
            <datatables:column title="Id" property="id" filterable="false" />
            <datatables:column title="Nome" property="nome" filterable="false" />
            <datatables:column title="Idade" property="idade" filterable="false" />
            <datatables:column title="Logradouro" property="endereco.logradouro" filterable="false" />
            <datatables:column title="Cidade" property="endereco.cidade" filterable="false" />
            <datatables:column title="Actions" renderFunction="actions"
                               filterable="false" searchable="false" sortable="false"/>
        </datatables:table>

        <div class="panel-footer"></div>

    </div>
    <%--inclui o formulário via modal--%>
    <c:import url="../modal/modal-form.jsp"/>
    <%--inclui o dialog de confirmação--%>
    <c:import url="../modal/modal-confirm.jsp"/>
</div>
