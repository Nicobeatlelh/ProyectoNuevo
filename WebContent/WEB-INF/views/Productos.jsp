<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>

<%@ page import="java.util.List" %>
<%@ page import="org.springframework.jdbc.CannotGetJdbcConnectionException" %>
<%@ page import="org.springframework.dao.DataAccessException" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Productos</title>
  <!-- Bootstrap Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>

	<table class="table">
	<thead>
    <tr>
     <th></th>
      <th scope="col">Nombre</th>
      <th scope="col">Peso</th>
      <th scope="col">Stock</th>
      <th scope="col">Precio de Compra</th>
      <th scope="col">Precio de Venta</th>
      <th scope="col">Fecha última adquisición</th>
      <th></th>
    </tr>
  </thead>
   <tbody>
	<c:forEach items="${productos}" var="prod">
	 <tr>
	 <td><a href='<c:url value="/Productos/${prod.prod_nom}/${prod.peso}/borrar"/>'>X</a></td>
	 <th scope="row"><c:out value="${prod.prod_nom}"/></th>
      <th><c:out value="${prod.peso}"/></th>
      <td><c:out value="${prod.stock}"/></td>
      <td><c:out value="${prod.precio_c}"/></td>
      <td><c:out value="${prod.precio_v}"/></td>
      <td><c:out value="${prod.fua}"/></td>
      <td><a href='<c:url value="clientes/${prod.prod_nom}/${prod.peso}/actualizar"/>'>Actualizar</a></td>
    </tr>
    
</c:forEach>
<div class="row">
<c:forEach items="${productos}" var="prod">
<div class="col-md-4" style="margin-bottom: 2.5em">
<div class="card" id="carta" >
  <img class="card-img-top imagen-carta" src="<c:out value="${prod.img_tp}"/>" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${prod.prod_nom}"/></h5>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Peso: <c:out value="${prod.peso}"/></li>
    <li class="list-group-item">Precio de Venta: <c:out value="${prod.precio_v}"/></li> 
    <li class="list-group-item ocultar">Stock: <c:out value="${prod.stock}"/></li>
    <li class="list-group-item ocultar">Precio de Compra: <c:out value="${prod.precio_c}"/></li>
    <li class="list-group-item ocultar">Fecha de última adquisición: <c:out value="${prod.fua}"/></li>
  </ul>
  <div class="card-body">
    <a href='<c:url value="/Productos/${prod.prod_nom}/${prod.peso}/borrar"/>' class="card-link">Borrar Producto</a>
    <a class="verMas"  href="javascript:void(0);" class="card-link">Ver más</a>
    <a href='<c:url value="/Productos/${prod.prod_nom}/buscar"/>' class="card-link">Buscar Similares</a>
  </div>
</div>
</div>
</c:forEach>
</div>

  </tbody>
</table>



<script>
// var status = "less";
// var link = document.getElementsByClassName("verMas");
// link.addEventListener("click", showtext, false);
// function showtext(e)
// {
// 	console.log(e);
// 	 if (status == "less") {
// 	      var els= e.target.offsetParent.getElementsByClassName("ocultar");
// 	      for(i = 0;i<els.length;i++){
// 	    	  els[i].style.display = "none";
// 	      };
// 	        e.target.innerText = "Ver Menos";
// 	        status = "more";
// 	    } else if (status == "more") {
// 	    	var els= e.target.offsetParent.getElementsByClassName("ocultar");
// 		      for(i = 0;i<els.length;i++){
// 		    	  els[i].style.display = "block";
// 		      };
// 	        e.target.innerText = "ver Mas";
// 	        status = "less"
// 	    }
// }
</script>
</body>
</html>