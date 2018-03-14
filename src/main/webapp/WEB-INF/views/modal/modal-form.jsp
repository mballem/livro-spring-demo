<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--ADD/EDIT MODAL--%>
<div class="modal fade" id="modal-form" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Formulário de
					Contatos</h4>
			</div>
			<div class="modal-body">
				<c:url value="/${tenantId}/contato/salvar" var="salvar" />
				<form:form modelAttribute="contato" action="${salvar}" method="post"
					class="form-horizontal">
					<form:hidden id="edt_id" path="id" />
					<div class="form-group">
						<label for="edt_nome" class="col-sm-4 control-label">Nome</label>
						<div class="col-sm-8">
							<form:input type="text" class="form-control" id="edt_nome"
								placeholder="nome" path="nome" required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="edt_idade" class="col-sm-4 control-label">Idade</label>
						<div class="col-sm-8">
							<form:input type="number" class="form-control" id="edt_idade"
								placeholder="idade" min="0" max="109" path="idade"
								required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="edt_logradouro" class="col-sm-4 control-label">Logradouro</label>
						<div class="col-sm-8">
							<form:input type="text" class="form-control" id="edt_logradouro"
								placeholder="logradouro" path="endereco.logradouro"
								required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="edt_cidade" class="col-sm-4 control-label">Cidade</label>
						<div class="col-sm-8">
							<form:input type="text" class="form-control" id="edt_cidade"
								placeholder="cidade" path="endereco.cidade" required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="edt_estado" class="col-sm-4 control-label">Estado
							(UF)</label>
						<div class="col-sm-8">
							<form:select class="form-control" id="edt_estado"
								itemValue="endereco.estado" path="endereco.estado"
								required="true">
								<option>AC</option>
								<option>AL</option>
								<option>AP</option>
								<option>AM</option>
								<option>CE</option>
								<option>DF</option>
								<option>ES</option>
								<option>GO</option>
								<option>MA</option>
								<option>MT</option>
								<option>MS</option>
								<option>MG</option>
								<option>PA</option>
								<option>PB</option>
								<option>PE</option>
								<option>PI</option>
								<option>PR</option>
								<option>RJ</option>
								<option>RN</option>
								<option>RO</option>
								<option>RR</option>
								<option>RS</option>
								<option>SC</option>
								<option>SP</option>
								<option>SE</option>
								<option>TO</option>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label for="edt_tipoEndereco" class="col-sm-4 control-label">Tipo
							de Endereço</label>
						<div class="col-sm-8">
							<form:select class="form-control" id="edt_tipoEndereco"
								itemValue="endereco.tipoEndereco" path="endereco.tipoEndereco"
								required="true">
								<option>RESIDENCIAL</option>
								<option>COMERCIAL</option>
							</form:select>
						</div>
					</div>
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">Log de Auditoria</div>
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th style='font-size: 9pt;'>Tabela</th>
									<th style='font-size: 9pt;'>Criado Por</th>
									<th style='font-size: 9pt;'>Criado Em</th>
									<th style='font-size: 9pt;'>Modificado Por</th>
									<th style='font-size: 9pt;'>Modificado Em</th>
								</tr>
							</thead>
							<tbody>
								<tr id="row_c">
									<td style='font-size: 9pt;'>Contatos</td>
									<td style='font-size: 9pt;' id="aud_createdBy"></td>
									<td style='font-size: 9pt;' id="aud_createdDate"></td>
									<td style='font-size: 9pt;' id="aud_modifiedBy"></td>
									<td style='font-size: 9pt;' id="aud_modifiedDate"></td>
								</tr>
								<tr id="row_e">
									<td style='font-size: 9pt;'>Enderecos</td>
									<td style='font-size: 9pt;' id="aud_end_createdBy"></td>
									<td style='font-size: 9pt;' id="aud_end_createdDate"></td>
									<td style='font-size: 9pt;' id="aud_end_modifiedBy"></td>
									<td style='font-size: 9pt;' id="aud_end_modifiedDate"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="modal-footer">
						<button id="modal-close" type="button" class="btn btn-default"
							data-dismiss="modal">Fechar</button>
						<button id="modal-save" type="submit" class="btn btn-primary">Salvar</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>