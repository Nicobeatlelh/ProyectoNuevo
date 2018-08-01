<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<c:forEach items="${prodsObt}" var="prod">
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
</body>
</html>