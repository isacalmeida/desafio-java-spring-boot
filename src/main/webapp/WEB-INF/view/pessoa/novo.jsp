<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<li><a href="<c:url value='/pessoa' />" >Pessoa</a></li>
			<li class="active">Novo</li>
		</ol>
	</section>
	<section class="content">
		<div class="box">
			<form:form method="post" action="/pessoa/salvar" modelAttribute="pessoa">
				<div class="box-header with-border">
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="id"> Id </form:label>
						<form:input path="id" class="form-control" readonly="true"></form:input>
					</div>
				</div>
				<div class="box-body">
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="nome"> Nome Completo </form:label>
						<form:input path="nome" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="cpf"> CPF </form:label>
						<form:input path="cpf" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="dataNascimento"> Data de Nascimento </form:label>
						<form:input path="dataNascimento" class="form-control"></form:input>
					</div>
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<form:label path="funcionario"> Funcionário </form:label>
						<form:select path="funcionario" class="form-control">
							<form:option value="true"> Sim </form:option>
							<form:option value="false"> Não </form:option>
						</form:select>
					</div>
				</div>
				<div class="box-footer">
					<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8">
						<button name="submit" type="submit" class="btn btn-success btn-flat"> Salvar </button>
						<a href="<c:url value='/pessoa' />"><button type="button" class="btn btn-default btn-flat"> Voltar </button></a>
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