<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Início</title>

<jsp:include page="header.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

<jsp:include page="main.jsp"></jsp:include>
	
<jsp:include page="menu.jsp"></jsp:include>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Dashboard
			<small>Painel de Controle</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<c:url value='/' />" ><i class="fa fa-dashboard"></i> Início</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<section class="content">
		<div class="box">
			<div class="box-body">
				<h2 class="box-title">Bem vindo!</h2>
			</div>
		</div>
	</section>
</div>

</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>