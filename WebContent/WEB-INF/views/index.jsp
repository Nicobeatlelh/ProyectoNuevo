<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<link rel="stylesheet" href="<c:url value="resources/css/style.css" />" type="text/css">
<script src="resources/js/script.js" type="text/javascript"></script>

<title>Es el index</title>
</head>
<body style="background-color:#D3D3D3">
<!-- 	<h1>Estoy en el index.jsp</h1> -->
<%-- 	<a href='<c:url value="/about"/>'>Acerca de</a><br/> --%>
<%-- 	<a href='<c:url value="/admin"/>'>Gestionar Administradores</a> --%>
<%-- 	<a href='<c:url value="/nico"/>'>Ir a Nicos</a> --%>
<!-- 	<button class="btn btn-primary">asd</button> -->
<!-- 	<br/> -->
<%-- 	Desde el Modelo<c:out value="${mensajeEnviado}"></c:out><br/> --%>
<%-- 	<b>Variables desde el ambito de la session: </b><c:out value="${sessionScope.resultado}"/> --%>

<!-- 	<h2>Para el uso de Formularios con Spring</h2> -->
<%-- 	<c:out value="${adminForm}"></c:out> --%>
	
	
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
   <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href='<c:url value="/"/>'>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
        Inicio <span class="sr-only">(current)</span>
</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<c:url value="/Pedidos"/>'>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                            Pedidos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<c:url value="/Productos"/>'>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            Productos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<c:url value="/Clientes"/>'>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            Clientes</a>
      </li>
    </ul>
    
    
  </div>
</nav>

        <div class="container-fluid">  
     <!-- Comienza el main ************************* -->
        <main role="main">
            <div class="container principal">
            <h5>Accesos rápidos</h5>
            
<!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'proveedores')">Proveedores</button>
  <button class="tablinks" onclick="openCity(event, 'clientes')">Clientes</button>
  <button class="tablinks" onclick="openCity(event, 'Productos')">Productos</button>
</div>

<!-- Tab content -->
<div id="proveedores" class="tabcontent">
  <h3>Proveedores</h3>
  <form action="TomarDatosProveedores" method="get">
  <label>Nombre: </label>
  <input type="text" value="nombre" name="nombre"><br>
  <label>Teléfono</label>
  <input type="text" name="telefono" value="telefono"><br><br>
  <input type="submit" value="Submit">
</form> 
</div>

<div id="clientes" class="tabcontent">
  <h3>Clientes</h3>
  <sf:form action="${pageContext.request.contextPath}/Clientes/guardar" method="post" commandName="cliente">
  <label>Nombre: </label>
  <sf:input cssClass="form-control" path="nom_cli"/>
  <label>Teléfono:</label>
  <sf:input cssClass="form-control" path="tel_cli"/>
  <label>Deuda:</label>
  <sf:input cssClass="form-control" path="deuda_cli"/>
  <input class="btn btn-primary" type="submit" value="Agregar cliente"><br>
</sf:form> 
</div>
<div id="Productos" class="tabcontent">
  <h3>Productos</h3>
  <sf:form action="${pageContext.request.contextPath}/Productos/guardar" method="post" commandName="producto">
	<table class="table">
<!-- 	<tr> -->
<!-- 			<td>Un campo fuera del objeto</td> -->
<!-- 			<td><input name="fuera" type="text"/> </td> -->
<!-- 		</tr> -->
		<tr>
			<td>Peso</td>
			<td><sf:input cssClass="form-control" path="peso"/> </td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><sf:input cssClass="form-control" path="prod_nom"/> </td>
		</tr>
		<tr>
			<td>Stock</td>
			<td><sf:input cssClass="form-control" path="stock"/></td>
		</tr>
		
         <tr>
			<td>Precio Compra</td>
			<td><sf:input cssClass="form-control" path="precio_c"/></td>
		</tr>
		<tr>
			<td>Precio Venta</td>
			<td><sf:input cssClass="form-control" path="precio_v"/> </td>
		</tr>
		<tr>
		<tr>
			<td>Ruta de imagen</td>
			<td><sf:input cssClass="form-control" path="img_tp"/> </td>
		</tr>
		<tr>
			<td></td>
			<td><input class="btn btn-primary" type="submit" value="Guardar Cambios"/></td>
		</tr>
	</table>
	</sf:form>
</div> 

<a class="btn btn-primary btn-lg active" id="crearFactura" data-toggle="collapse" data-target="#factura" href="javascript:void(0)">Crear Factura</a>

<table class="table collapse" id="factura">
			<thead>
				<tr class="item-row">
					<th scope="col">Nombre Producto</th>
					<th scope="col">Peso</th>
					<th scope="col">Stock</th>
					<th scope="col">Precio-Unit</th>
					<th scope="col">Cantidad</th>
					<th scope="col">Precio-Total</th>
				</tr>
			</thead>
			<tbody>
				<tr class="item-row">			
							<th scope="row"><span id="nomProd" contentEditable="true">nom</span></th>
					<td><span id="pesoProd" contentEditable="true">peso</span></td>
					<td></td>
					<td><textarea class="cost"></textarea></td>
					

					<td><textarea class="qty"> </textarea></td>
					<td class="price"></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td></td>
					<td></td>
					<td>Subtotal</td>
					<td id="subtotal"></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td></td>
					<td></td>
					<td>Total</td>
					<td id="total"></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td></td>
					<td></td>
					<td>Dinero Pagado</td>
					<td><textarea id="paid"></textarea></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td></td>
					<td></td>
					<td>Deuda</td>
					<td class="due"></td>
				</tr>
			</tbody>
		</table>
<!-- <div id="mostrar"> -->
<!-- <div class="contenido"> -->
<!-- <table id="tablec"> -->
<%--   <caption>Monthly savings</caption> --%>
<!--   <tr> -->
<!--     <th>Month</th> -->
<!--     <th>Savings</th> -->
<!--     <th>Month</th> -->
<!--     <th>Savings</th> -->
<!--     <th>Month</th> -->
<!--     <th>Savings</th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>January</td> -->
<!--     <td>$100</td> -->
<!--     <td>January</td> -->
<!--     <td>$100</td> -->
<!--     <td>January</td> -->
<!--     <td>$100</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>February</td> -->
<!--     <td>$50</td> -->
<!--      <td>February</td> -->
<!--     <td>$50</td> -->
<!--      <td>February</td> -->
<!--     <td>$50</td> -->
<!--   </tr> -->
<!--    <tr> -->
<!--     <td>February</td> -->
<!--     <td>$50</td> -->
<!--      <td>February</td> -->
<!--     <td>$50</td> -->
<!--      <td>February</td> -->
<!--     <td>$50</td> -->
<!--   </tr> -->
<!-- </table> -->

<!-- </div> -->
<!-- </div> -->
            </div>
            </main> <!-- termina el main -->

        </div>
	<script type="text/javascript" src="resources/js/example2.js"></script>
</body>
</html>