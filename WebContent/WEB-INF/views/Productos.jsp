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
<link rel="stylesheet" type="text/css" href="css/style.css">
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
	 <td><a href='<c:url value="/clientes/${prod.prod_nom}/borrar"/>'>X</a></td>
	 <th scope="row"><c:out value="${prod.prod_nom}"/></th>
      <th><c:out value="${prod.peso}"/></th>
      <td><c:out value="${prod.stock}"/></td>
      <td><c:out value="${prod.precio_c}"/></td>
      <td><c:out value="${prod.precio_v}"/></td>
      <td><c:out value="${prod.fua}"/></td>
      <td><a href='<c:url value="clientes/${prod.prod_nom}/actualizar"/>'>Actualizar</a></td>
    </tr>
    
</c:forEach>

<c:forEach items="${productos}" var="prod">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src=".../100px180/?text=Image cap" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${prod.prod_nom}"/></h5>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Peso: <c:out value="${prod.peso}"/></li>
    <li class="list-group-item">Stock: <c:out value="${prod.stock}"/></li>
    <li class="list-group-item">Precio de Compra: <c:out value="${prod.precio_c}"/></li>
    <li class="list-group-item">Precio de Venta: <c:out value="${prod.precio_v}"/></li>
    <li class="list-group-item">Fecha de última adquisición: <c:out value="${prod.fua}"/></li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
</c:forEach>

  </tbody>
</table>

</body>
</html>