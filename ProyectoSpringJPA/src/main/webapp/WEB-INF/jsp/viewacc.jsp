<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Accidentes</title>
    <!-- CSS Bootstrap -->
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/datatables.css" var="datatablesCSS"/>
    <spring:url value="/resources/css/dataTables.bootstrap4.css" var="datatablesbCSS"/>
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <link href="${datatablesCSS}" rel="stylesheet" />
    <link href="${datatablesbCSS}" rel="stylesheet" />
    
    <!-- jQuery, datatable -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/jquery.dataTables.js" var="datatablesJS"/>
   	<spring:url value="/resources/js/jquery.dataTables.es.js" var="datatablesEsJS"/>
    
    <script src="${jqueryJS}"></script>
    <script src="${datatablesJS}"></script>
    <script src="${datatablesEsJS}"></script>
    
</head>
<body style="padding: 10px;">

	<h1>Listado de Accidente</h1>
	<c:if test="${ccmensaje != null}">
		<h2>
			<c:out value="${ccmensaje}"></c:out>
		</h2>
	</c:if>

<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Accidente</th>
		<th>Fecha</th>
		<th>Hora</th>
		<th>Suceso</th>
		<th>Lugar</th>
		<th>Cliente id</th>
		<th>Acciones<th>

	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listaaccidentes}" var="acc">
	<tr>
		<td>${acc.idaccidente}</td> 
		<td>${acc.fecha}</td>
		<td>${acc.hora}</td>
		<td>${acc.suceso}</td>
		<td>${acc.lugar}</td>
		<td>${acc.cliente_id}</td>
		<td>
			<a href="deleteacc/${acc.idaccidente}">Eliminar</a>&nbsp;
			<a href="editacc/${acc.idaccidente}">Editar</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a href="accform">Agregar nuevo Accidente </a>&nbsp;&nbsp;
	<a href="index.jsp">Volver al inicio</a>

</body>

</html>