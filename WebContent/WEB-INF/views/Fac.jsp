<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>

<%@ page import="java.util.List"%>
<%@ page
	import="org.springframework.jdbc.CannotGetJdbcConnectionException"%>
<%@ page import="org.springframework.dao.DataAccessException"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap Styles -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<title>Factura</title>
</head>
<body>
	<nav class="navbar navbar-dark navbar-fixed-top bg-dark" id="compania">

	<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company
		name</a>
	<ul class="lista">
		<li><a class="nav-link active" href="#"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-home"> <path
					d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path> <polyline
					points="9 22 9 12 15 12 15 22"></polyline></svg> Inicio <span
				class="sr-only">(current)</span>
		</a></li>
		<li><a class="nav-link" href="#"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-file"> <path
					d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
				<polyline points="13 2 13 9 20 9"></polyline></svg> Pedidos
		</a></li>
		<li><a class="nav-link" href="Productos.jsp"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-shopping-cart"> <circle cx="9" cy="21"
					r="1"></circle> <circle cx="20" cy="21" r="1"></circle> <path
					d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
				Productos
		</a></li>
		<li><a class="nav-link" href="Clientes.jsp"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-users"> <path
					d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path> <circle
					cx="9" cy="7" r="4"></circle> <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
				<path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg> Clientes
		</a></li>
		<li><a class="nav-link" href="#"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-bar-chart-2"> <line x1="18" y1="20"
					x2="18" y2="10"></line> <line x1="12" y1="20" x2="12" y2="4"></line>
				<line x1="6" y1="20" x2="6" y2="14"></line></svg> Reportes
		</a></li>
		<li><a class="nav-link" href="#"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-layers"> <polygon
					points="12 2 2 7 12 12 22 7 12 2"></polygon> <polyline
					points="2 17 12 22 22 17"></polyline> <polyline
					points="2 12 12 17 22 12"></polyline></svg> Integraciones
		</a></li>
	</ul>
	</nav>
	<div id="factura">
		<div class="container">
			<div class="row align-items-end">
				<div class="col-9">
					<h3>Factura</h3>
				</div>
				<div class="col" id="date"></div>
			</div>
			<div class="row align-items-start">
				<div class="col-4">
					<h6>Agregar Datos del Vendedor</h6><input class="form-control" />
					<label>Nombre: </label><input class="form-control" />
					<label>CUIT: </label><input class="form-control" />
					<label>Teléfono: </label><input class="form-control" />
					<label>Dirección: </label><input class="form-control" />
				</div>
				<div class="col-4">

					<h6>Agregar Datos del Cliente</h6>
			
						<label>Id:</label> <input id="idCli" value='<c:out value = "${clienteObt.id_cli}"/>'>
	

					<p>
						Nombre: <span><c:out value = "${clienteObt.nom_cli}"/></span>
					</p>
					<p>Teléfono: <span> <c:out value = "${clienteObt.tel_cli}"/></span></p>
					<p>
						Dirección:</span>
					</p></p>

				</div>
				<!-- Fecha -->
				<div class="col offset-1"></div>
			</div>
		</div>
<div id="agregarProducto">
<h3>Agregar Producto</h3>
<input name="nombre" >
  <input name="peso" >
  <a id="buscarProducto" href="javascript:void(0)">Cargar Producto</a>
</div>
		<button id="addrow">Agregar Fila</button>
		<table class="table">
			<thead>
				<tr class="item-row">
					<th scope="col">Nombre Producto</th>
					<th scope="col">Peso</th>
					<th scope="col">Stock</th>
					<th scope="col">Precio-Unit</th>
					<th scope="col">Cantidad</th>
				</tr>
			</thead>
			<tbody>
				<tr class="item-row">
			
								<th scope="row"><c:out value = "${prodObt.prod_nom}"/></th>
					<td><c:out value = "${prodObt.peso}"/></td>
					<td><c:out value = "${prodObt.stock}"/></td>
					<td><c:out value = "${prodObt.precio_v}"/></td>
					<td><input name="cantidad" /></td>
				</tr>
				
			</tbody>
		</table>
		<a id="crearFac" href="#">Crear Factura</a>
		<a id="crearDetalle" href="#">Crear Detalle</a>
		<c:out value="${ factura.id_fac }"/>
	</div>
	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script type="text/javascript" src="resources/js/example2.js"></script>
</body>
</html>