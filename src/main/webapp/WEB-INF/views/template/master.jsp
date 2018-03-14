<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Livro Spring Data JPA, Persistencia Simples e Eficaz.">
    <meta name="author" content="Marcio Ballem">
    <title>${param.title}</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin .checkbox {
            font-weight: normal;
        }

        .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<!-- /container -->
<jsp:include page="/WEB-INF/views/content/${param.content}.jsp"/>

<jsp:include page="/WEB-INF/views/footer.jsp"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        /**
         * abre o modal para inserção e alteração de contatos.
         * */
        $('#modal-form').on('shown.bs.modal', function (e) {
            var whatever = $(e.relatedTarget).data('whatever');
            if (whatever == 'Editar') {
                var url = $(e.relatedTarget).data('href');
                var id = $(e.relatedTarget).data('id');
                edit(url, id);
            }
            $(this).focus()
        });

        /**
         * abre o modal para a confirmação de exlusão de um contato.
         * */
        $('#modal-confirm').on('show.bs.modal', function (e) {
            $(this).find('#modal-ok').click(function () {
                var url = $(e.relatedTarget).data('href')
                window.location.href = url;
            })
        });

        /**
         * limpa o formulário e a tabela de auditpria caso o usuário cancele uma edição.
         * */
        $(this).find('#modal-close').click(function () {
            $('input[id*="edt_"]').each(function () {
                $(this).val('');
            });
            $('td[id*="aud_"]').each(function () {
                $(this).text('');
            });
        });

    });

    /**
     * adiciona os botões de edição e exclusão na tabela.
     */
    function actions(data, type, full) {

        return '<c:url var="edit" value="/${tenantId}/contato/edit"/>' +
            '<button id="" class="btn btn-xs btn-default" data-toggle="modal" data-target="#modal-form" ' +
            'data-whatever="Editar" data-href="${edit}" data-id="' + full.id + '" title="Editar">' +
            '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>' +
            '</button>&nbsp;' +

            '<c:url var="del" value="/${tenantId}/contato/delete/'+full.id+'"/>' +
            '<button class="btn btn-xs btn-default" data-toggle="modal" data-target="#modal-confirm" ' +
            'data-whatever="Remover" data-href="${del}" title="Excluir">' +
            '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>' +
            '</button>	'
    }

    /**
     * método ajax para consultar o contato a ser alterado e como resposta
     * adicionar seus dados no modal.
     * @param id
     */
    function edit(url, id) {
        $.ajax({
            method: "GET",
            url: url,
            dataType: "json",
            data: {id: id},
        }).done(function (data) {
            $("#edt_id").val(data.id);
            $("#edt_nome").val(data.nome);
            $("#edt_idade").val(data.idade);
            $("#edt_dtCadastro").val(data.dtCadastro);
            $("#edt_logradouro").val(data.endereco.logradouro);
            $("#edt_cidade").val(data.endereco.cidade);
            $("#edt_estado").val(data.endereco.estado);
            $("#edt_tipoEndereco").val(data.endereco.tipoEndereco);
            $("#aud_createdBy").text(data.createdBy);
            $("#aud_createdDate").text(new Date(data.createdDate).toLocaleString());
            $("#aud_modifiedBy").text(data.modifiedBy);
            $("#aud_modifiedDate").text(new Date(data.modifiedDate).toLocaleString());
            $("#aud_end_createdBy").text(data.endereco.createdBy);
            $("#aud_end_createdDate").text(new Date(data.endereco.createdDate).toLocaleString());
            $("#aud_end_modifiedBy").text(data.endereco.modifiedBy);
            $("#aud_end_modifiedDate").text(new Date(data.endereco.modifiedDate).toLocaleString());
        }).fail(function () {
            alert("ops... ocorreu um erro.");
        });
    }
</script>
</body>
</html>