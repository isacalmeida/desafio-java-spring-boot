<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
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
			<div class="box-header with-border">
				<div class="col-xs-10 col-sm-6 col-md-4 col-lg-4">
					<a href="<c:url value='/projeto/novo'/>" ><button type="button" class="btn btn-primary btn-flat">Novo</button></a>
					<a href="<c:url value='/' />"><button type="button" class="btn btn-info btn-flat">Voltar</button></a>
				</div>
			</div>
			<div class="box-body">
				<table id="tabela_principal" class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>Descricao</th>
							<th>Status</th>
							<th>Risco</th>
							<th>Data Início</th>
							<th>Data Previsão Fim</th>
							<th>Data Fim</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${projetos }">
							<c:if test="${!empty(p)}" >
								<tr>
									<td>${p.id }</td>
									<td><a href="<c:url value='/projeto/${p.id }/editar' />" >${p.nome }</a></td>
									<td>${p.descricao }</td>
									<td>${p.status }</td>
									<td>${p.risco }</td>
									<td>${p.dataInicio }</td>
									<td>${p.dataPrevisaoFim }</td>
									<td>${p.dataFim }</td>
								</tr>
							</c:if>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
</div>

</div>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>