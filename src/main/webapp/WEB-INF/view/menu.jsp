<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Menu </title>
</head>
<body>

<aside class="main-sidebar">
	<section class="sidebar">
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group ui-widget">
				<input type="text" id="busca" name="q" class="form-control" placeholder="Pesquisar ..." autocomplete="off">
				<span class="input-group-btn">
					<button type="submit" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
				</span>
			</div>
		</form>
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MENU PRINCIPAL</li>
			<li class="treeview">
				<a href="<c:url value='/' />" >
					<i class="fa fa-folder"></i>
					<span>Início</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="<c:url value='/' />" ><i class="fa fa-dashboard"></i> Dashboard</a></li>
					<li><a href="<c:url value='/pessoa' />" ><i class="fa fa-pencil-square-o"></i> Pessoa</a></li>
					<li><a href="<c:url value='/projeto' />" ><i class="fa fa-gear"></i> Projeto</a></li>
				</ul>
			</li>
		</ul>
	</section>
</aside>

</body>
</html>