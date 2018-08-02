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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body style="background-color:#D3D3D3">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
   <ul class="navbar-nav">
      <li class="nav-item">
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
      <li class="nav-item active">
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
    
      <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search">
      <a class="btn btn-outline-success my-2 my-sm-0" id="search" type="submit">Search</a>
    
  </div>
</nav>
   <div class="container-fluid principal" id="productos">
	
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
    <li class="list-group-item ">Stock: <c:out value="${prod.stock}"/></li>
    <li class="list-group-item ">Precio de Compra: <c:out value="${prod.precio_c}"/></li>
    <li class="list-group-item ">Fecha de última adquisición: <c:out value="${prod.fua}"/></li>
  </ul>
  <div>
  <ol class="breadcrumb" style="background-color:white;margin-left:20px;">
   <li class="breadcrumb-item"> <a href='<c:url value="/Productos/${prod.prod_nom}/${prod.peso}/borrar"/>' class="card-link">Borrar Producto</a></li>
   <li class="breadcrumb-item"> <a href="javascript:void(0);" class="card-link">Ver más</a></li>
   <li class="breadcrumb-item"> <a href='<c:url value="/Productos/${prod.prod_nom}/buscar"/>' class="card-link">Buscar Similares</a></li>
    </ol>
  </div>
</div>
</div>
</c:forEach>
</div>
<a class="btn btn-primary btn-lg active" id="verTabla" data-toggle="collapse" data-target="#tabla" href="javascript:void(0)">Ver en tabla</a>
<table class="table collapse" id="tabla">
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

  </tbody>
</table>

</div> 

<script>
$( "#search" ).click(function() {
	var nombre = $('input[name="search"]').val();
	window.location.href = 'Productos/'+nombre+'/buscar';
    //var a = $('input[name="inputbox"]').val();
    //alert(a);
//     $( "#myForm" ).submit();
    });
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