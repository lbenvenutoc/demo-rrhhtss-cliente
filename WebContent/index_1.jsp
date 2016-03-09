<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="myApp">
<head>
<script
	src="resources/js/angular/angular.min.js"></script>
<script src="resources/js/app.js"></script>
<script src="resources/js/service/curso_service.js"></script>
<script src="resources/js/controller/curso_controller.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body ng-controller="CursoController as ctrl">
	<h3>Demo SpringMVC + MyBatis + Bootstrap</h3>
	<br></br>
	<spring:url value="listaCursos" var="listarCursoUrl" />
	<button class="btn btn-primary" data-toggle="button"
		ng-click="ctrl.mostrarListaCurso()"
		onclick="location.href='${listarCursoUrl}'">Lisar Cursos</button>



</body>
</html>