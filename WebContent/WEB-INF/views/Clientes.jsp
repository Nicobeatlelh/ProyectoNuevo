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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/styleClientes.css">
<script src="js/script.js" type="text/javascript"></script>
<title>Insert title here</title>
<script src="js/script.js" type="text/javascript"></script>
</head>
<body>
 <nav class="navbar navbar-dark navbar-fixed-top bg-dark" id="compania">
            
                <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company name</a>
                <ul class="lista">
                        <li>
                          <a class="nav-link active" href='<c:url value="/"/>'>
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
			<td><sf:input path="nom_cli"/> </td>
		</tr>
		<tr>
			<td>Teléfono</td>
			<td><sf:input path="tel_cli"/> </td>
		</tr>
		<tr>
			<td>Deuda</td>
			<td><sf:input path="deuda_cli"/></td>
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
			<td><sf:input path="nom_cli"/> </td>
		</tr>
		<tr>
			<td>Teléfono</td>
			<td><sf:input path="tel_cli"/> </td>
		</tr>
		<tr>
			<td>Deuda</td>
			<td><sf:input path="deuda_cli"/></td>
		</tr>
		
			<td></td>
			<td><input type="submit" value="Guardar Cambios" class="btn btn-primary"/></td>
		</tr>
	</table>
	</sf:form>
  </c:otherwise>
  </c:choose>
	
      
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


<c:out value="${ resultado }"/>






</div>
            </div>
            </main> <!-- termina el main -->
</body>
</html>