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
   <!-- Bootstrap Styles -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="css/styleClientes.css">
<script src="js/script.js" type="text/javascript"></script>
<title>Insert title here</title>
<script src="js/script.js" type="text/javascript"></script>
</head>
<body>
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
      <li class="nav-item">
        <a class="nav-link" href='<c:url value="/Productos"/>'>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            Productos</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href='<c:url value="/Clientes"/>'>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            Clientes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
        <div class="container-fluid">
                
     <!-- Comienza el main ************************* -->
        <main role="main">
  
      
	<table class="table">
	<thead>
    <tr>
     <th></th>
      <th scope="col">Id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Teléfono</th>
      <th scope="col">Deuda</th>
      <th></th>
    </tr>
  </thead>
   <tbody>
	<c:forEach items="${cls}" var="cli">
	 <tr>
	 <td><a href='<c:url value="/clientes/${cli.id_cli}/borrar"/>'>X</a></td>
      <th scope="row"><c:out value="${cli.id_cli}"/></th>
      <td><c:out value="${cli.nom_cli}"/></td>
      <td><c:out value="${cli.tel_cli}"/></td>
      <td><c:out value="${cli.deuda_cli}"/></td>
      <td><a href='<c:url value="clientes/${cli.id_cli}/actualizar"/>'>Actualizar</a></td>
    </tr>
    
</c:forEach>
  </tbody>
</table>
<div class="container">
<div class="row">
  <div class="col-md-4 offset-md-4">

           <c:choose>
         
         <c:when test = "${clienteObt!=null}">
         <sf:form action="${pageContext.request.contextPath}/Clientes/actualizarF" method="post" commandName="clienteObt">
         <table>
<!-- 	<tr> -->
<!-- 			<td>Un campo fuera del objeto</td> -->
<!-- 			<td><input name="fuera" type="text"/> </td> -->
<!-- 		</tr> -->
		<tr>
		<td><sf:input type="hidden" path="id_cli"/></td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><sf:input cssClass="form-control" path="nom_cli"/> </td>
		</tr>
		<tr>
			<td>Teléfono</td>
			<td><sf:input cssClass="form-control" path="tel_cli"/> </td>
		</tr>
		<tr>
			<td>Deuda</td>
			<td><sf:input cssClass="form-control" path="deuda_cli"/></td>
		</tr>
		
			<td></td>
			<td><input type="submit" value="Actualizar Datos" class="btn btn-secondary btn-lg"/></td>
		</tr>
	</table>
	</sf:form>
</c:when>
<c:otherwise>
  <sf:form action="${pageContext.request.contextPath}/Clientes/guardar" method="post" commandName="cliente">
  <table>
<!-- 	<tr> -->
<!-- 			<td>Un campo fuera del objeto</td> -->
<!-- 			<td><input name="fuera" type="text"/> </td> -->
<!-- 		</tr> -->
		<tr>
		<td><sf:input type="hidden" path="id_cli"/></td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><sf:input cssClass="form-control" path="nom_cli"/> </td>
		</tr>
		<tr>
			<td>Teléfono</td>
			<td><sf:input cssClass="form-control" path="tel_cli"/> </td>
		</tr>
		<tr>
			<td>Deuda</td>
			<td><sf:input cssClass="form-control" path="deuda_cli"/></td>
		</tr>
		
			<td></td>
			<td><input type="submit" value="Guardar Cambios" class="btn btn-primary"/></td>
		</tr>
	</table>
	</sf:form>
  </c:otherwise>
  </c:choose>
	
</div>
</div>



</div>
            </div>
            </main> <!-- termina el main -->
</body>
</html>