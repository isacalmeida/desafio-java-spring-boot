<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pessoas</title>

<jsp:include page="../header.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

<jsp:include page="../main.jsp"></jsp:include>
	
<jsp:include page="../menu.jsp"></jsp:include>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Pessoas
			<small>Cadastro de Pessoas</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<c:url value='/' />" ><i class="fa fa-dashboard"></i> Início</a></li>
			<li class="active">Pessoas</li>
		</ol>
	</section>
	<section class="content">
		<div class="box">
			<div class="box-header with-border">
				<div class="col-xs-10 col-sm-6 col-md-4 col-lg-4">
					<a href="<c:url value='/pessoa/novo'/>" ><button type="button" class="btn btn-primary btn-flat">Novo</button></a>
					<a href="<c:url value='/' />"><button type="button" class="btn btn-info btn-flat">Voltar</button></a>
				</div>
			</div>
			<div class="box-body">
				<table id="tabela_principal" class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>CPF</th>
							<th>Data de Nascimento</th>
							<th>Funcionario</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${pessoas }">
							<c:if test="${!empty(p)}" >
								<tr>
									<td>${p.id }</td>
									<td><a href="<c:url value='/pessoa/${p.id }/editar' />"  >${p.nome }</a></td>	
									<td>${p.cpf }</td>
									<td>${p.dataNascimento }</td>
									<td>${p.funcionario }</td>
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