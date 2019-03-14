<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Projetos</title>

<jsp:include page="../header.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

<jsp:include page="../main.jsp"></jsp:include>
	
<jsp:include page="../menu.jsp"></jsp:include>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Projetos
			<small>Cadastro de Projetos</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<c:url value='/' />" ><i class="fa fa-dashboard"></i> Início</a></li>
			<li class="active">Projetos</li>
		</ol>
	</section>
	<section class="content">
		<div class="box">
			<form:form method="post" action="/projeto/salvar" modelAttribute="projeto">
				<div class="box-header with-border">
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="id"> Id </form:label>
						<form:input path="id" class="form-control" readonly="true"></form:input>
					</div>
				</div>
				<div class="box-body">
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="nome"> Nome do Projeto </form:label>
						<form:input path="nome" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="descricao"> Descrição </form:label>
						<form:input path="descricao" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="orcamento"> Orçamento </form:label>
						<form:input path="orcamento" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="dataInicio"> Data Início </form:label>
						<form:input path="dataInicio" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="dataPrevisaoFim"> Data Previsão Fim </form:label>
						<form:input path="dataPrevisaoFim" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="dataFim"> Data Fim </form:label>
						<form:input path="dataFim" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="risco"> Risco </form:label>
						<form:select path="risco" class="form-control">
							<form:option value="null"> Selecione </form:option>
							<form:option value="baixo"> Baixo </form:option>
							<form:option value="medio"> Médio </form:option>
							<form:option value="alto"> Alto </form:option>
						</form:select>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="status"> Status </form:label>
						<form:select path="status" class="form-control">
							<form:option value="null"> Selecione </form:option>
							<form:option value="em_analise"> Em Análise </form:option>
							<form:option value="analise_realizada"> Análise Realizada </form:option>
							<form:option value="analise_aprovada"> Análise Aprovada </form:option>
							<form:option value="iniciado"> Iniciado </form:option>
							<form:option value="planejado"> Planejado </form:option>
							<form:option value="em_andamento"> Em Andamento </form:option>
							<form:option value="encerrado"> Encerrado </form:option>
							<form:option value="cancelado"> Cancelado </form:option>
						</form:select>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="idGerente"> Gerente </form:label>
						<form:select path="idGerente" class="form-control">
							<form:options items="${pessoas}" itemLabel="nome" itemValue="id" />
						</form:select>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="membros"> Membros </form:label>
						<form:select path="membros" multiple="true" class="form-control">
							<form:options items="${funcionarios}" itemLabel="nome" />
						</form:select>
					</div>
				</div>
				<div class="box-footer">
					<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8">
						<button name="submit" value="1" type="submit" class="btn btn-success btn-flat">Salvar</button>
						<a href="<c:url value='/projeto' />"><button type="button" class="btn btn-default btn-flat">Voltar</button></a>
					<button type="button" class="btn btn-danger btn-flat" data-toggle="modal" data-target="#confirm">Excluir</button>
					</div>
				</div>
				<div class="modal fade" id="confirm">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">Confirmação</h4>
							</div>
							<div class="modal-body">
								<p>Tem certeza que deseja excluir?</p>
							</div>
							<div class="modal-footer">
								<button type="button" data-dismiss="modal" class="btn btn-default pull-left"> Voltar </button>
								<a href="<c:url value='/projeto/${projeto.id }/excluir'/>" ><button type="button" class="btn btn-primary" id="delete"> Confirmar </button></a>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</section>
</div>

</div>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>