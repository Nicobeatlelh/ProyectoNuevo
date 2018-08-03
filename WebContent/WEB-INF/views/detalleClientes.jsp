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
<div class="container-fluid">
   
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
	<c:forEach items="${clientesObt}" var="cli">
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
</div>

</body>
</html>