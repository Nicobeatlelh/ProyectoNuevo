<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css" />" type="text/css">
<link rel="stylesheet" href="<c:url value="resources/css/style.css" />" type="text/css">
<script src="resources/js/script.js" type="text/javascript"></script>

<title>Es el index</title>
</head>
<body>
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
	
	 <nav class="navbar navbar-dark navbar-fixed-top bg-dark" id="compania">
            
                <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company name</a>
                <ul class="lista">
                        <li>
                          <a class="nav-link active" href='<c:url value="/index"/>'>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                            Inicio <span class="sr-only">(current)</span>
                          </a>
                        </li>
                        <li>
                          <a class="nav-link" href='<c:url value="/Pedidos"/>'>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                            Pedidos
                          </a>
                        </li>
                        <li>
                          <a class="nav-link" href='<c:url value="/Productos"/>'>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            Productos
                          </a>
                        </li>
                        <li>
                          <a class="nav-link" href='<c:url value="/Clientes"/>'>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            Clientes
                          </a>
                        </li>
                        </ul>
              </nav>
        <div class="container-fluid">  
     <!-- Comienza el main ************************* -->
        <main role="main">
            <div class="container principal">
            <h5>Accesos rápidos</h5>
            
<!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'crear-factura')">Crear factura</button>
  <button class="tablinks" onclick="openCity(event, 'proveedores')">Proveedores</button>
  <button class="tablinks" onclick="openCity(event, 'clientes')">Clientes</button>
  <button class="tablinks" onclick="openCity(event, 'Productos')">Productos</button>
</div>

<!-- Tab content -->
<div id="crear-factura" class="tabcontent">
  <h3>Creación factura</h3>
  <p>London is the capital city of England.</p>
</div>

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
  <label>Id:</label>
  <input type="text" name="id" value="id"><br>
  <label>Nombre: </label>
  <sf:input path="nom_cli"/>
  <label>Teléfono:</label>
  <sf:input path="tel_cli"/>
  <label>Deuda:</label>
  <sf:input path="deuda_cli"/>
  <input type="submit" value="Agregar cliente"><br>
</sf:form> 
</div>
<div id="Productos" class="tabcontent">
  <h3>Productos</h3>
  <sf:form action="${pageContext.request.contextPath}/Productos/guardar" method="post" commandName="producto">
	<table>
<!-- 	<tr> -->
<!-- 			<td>Un campo fuera del objeto</td> -->
<!-- 			<td><input name="fuera" type="text"/> </td> -->
<!-- 		</tr> -->
		<tr>
			<td>Peso</td>
			<td><sf:input path="peso"/> </td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><sf:input path="prod_nom"/> </td>
		</tr>
		<tr>
			<td>Stock</td>
			<td><sf:input path="stock"/></td>
		</tr>
		
         <tr>
			<td>Precio Compra</td>
			<td><sf:input path="precio_c"/></td>
		</tr>
		<tr>
			<td>Precio Venta</td>
			<td><sf:input path="precio_v"/> </td>
		</tr>
		<tr>
		<tr>
			<td>Ruta de imagen</td>
			<td><sf:input path="img_tp"/> </td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Guardar Cambios"/></td>
		</tr>
	</table>
	</sf:form>
</div> 


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
	
</body>
</html>