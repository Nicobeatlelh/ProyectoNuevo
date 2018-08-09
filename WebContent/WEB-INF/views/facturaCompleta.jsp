<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visualización de Facturas</title>
 <!-- Bootstrap Styles -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
  <c:forEach items="${facturas}" var="fac">
  <li class="breadcrumb-item"><a href='facturaCompleta/detalle/<c:out value="${ fac.id_fac }"/>'>Cod: <c:out value="${ fac.id_fac }"/></a></li>
<%--   <option  name='<c:out value="${ fac.id_fac }"/>' >Cod: <c:out value="${ fac.id_fac }"/> [Fecha de Creación: <c:out value="${ fac.fecha_fac }"/>])</option> --%>
  </c:forEach>
  </ol>
</nav>
<table class="table">
			<thead>
				<tr class="item-row">
					<th scope="col">Nombre Producto</th>
					<th scope="col">Peso</th>
					<th scope="col">Cantidad</th>
					<th scope="col">Valor</th>
					<th scope="col">Entregado</th>
					<th scope="col">Total</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${detalles}" var="det">
				<tr class="item-row body-table">
			
								<th scope="row"><c:out value = "${det.producto.prod_nom}"/></th>
					<td><c:out value = "${det.producto.peso}"/></td>
					<td class="cant"><c:out value = "${det.cantidad}"/></td>
					<td class="cost"><c:out value = "${det.precio_vend}"/></td>
					<td><c:out value = "${det.entregado}"/></td>
					<td class="prod-total"></td>
				</tr>
				</c:forEach>
				<tr class="item-row">
			
								<td></td>
					<td></td>
					<td></td>
					<td></td>
					<th>Total</th>
					<td id="total"></td>
				</tr>
				<tr class="item-row">
			
								<td></td>
					<td></td>
					<td></td>
					<td></td>
					<th>Dinero Pagado</th>
					<td></td>
				</tr>
				<tr class="item-row">
			
								<td></td>
					<td></td>
					<td></td>
					<td></td>
					<th>Deuda Total</th>
					<td></td>
				</tr>
			</tbody>
		</table>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script>
	var total = 0;
	$(".body-table").each(function(){
		var cost = parseInt($(this).find(".cost").text());
		var cant = parseInt($(this).find(".cant").text());
		$(this).find(".prod-total").text("$ "+(cant*cost));
		console.log();
		var totalProd = parseInt($(this).children(".prod-total").html().replace("$ ",""));
		total += totalProd;
	});
	$("#total").html("$ "+total);
	</script>
</body>
</html>