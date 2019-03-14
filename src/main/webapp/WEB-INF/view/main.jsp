<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Main </title>
</head>
<body>

<header class="main-header">
	<a href="<c:url value='/' />" class="logo">
		<span class="logo-mini"><b>S</b>I</span>
		<span class="logo-lg"><b>Sistema </b> Isac</span>
	</a>
   	<nav class="navbar navbar-static-top">
		<a href="" class="sidebar-toggle" data-toggle="push-menu" role="button">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</a>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="<c:url value='/static/defaults/img/default-50x50.gif' />" class="user-image" alt="User Image">
						<span class="hidden-xs">Isac Haran de Almeida</span>
					</a>
					<ul class="dropdown-menu">
						<li class="user-header">
							<img src="<c:url value='/static/defaults/img/default-50x50.gif' />" class="img-circle" alt="User Image">
							<p>
								Isac Haran de Almeida - Administrador
								<small>Colaborador desde 2019</small>
							</p>
						</li>
						<li class="user-footer">
							<div class="pull-left">
								<a href="" class="btn btn-default btn-flat">Perfil</a>
							</div>
							<div class="pull-right">
								<a href="" class="btn btn-default btn-flat">Sair</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</header>

</body>
</html>