<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact Information</title>
<link rel="stylesheet" href="https://bootswatch.com/4/flatly/bootstrap.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<header class="bg-dark p-2 mb-5">
		<h1 class="text-light">Add Contact Information</h1>
		<a href="/students/new" class="btn btn-success">Add Student</a>
		<a href="/students" class="btn btn-success">Student Index</a>
	</header>
	<main class="text-center">
		<h3 class="mb-5">Contact Information</h3>
		<form:form class="form w-50 m-auto" action="/contacts" method="POST" modelAttribute="contact">
			<div class="form-group row">
				<form:label class="col-3" path="student">Student</form:label>
				<form:select class="form-control col-5" path="student">
					<c:forEach items="${ students }" var="student">
					<option value=${ student.id }>${ student.firstName } ${ student.lastName }</option>
					</c:forEach>
				</form:select>
			</div>
			<div class="form-group row">
				<form:label class="col-3" path="address">Address</form:label>
				<form:input class="form-control col-5" path="address"/>
				<form:errors class="col-4 text-danger" path="address"/>
			</div>
			<div class="form-group row">
				<form:label class="col-3" path="city">City</form:label>
				<form:input class="form-control col-5" path="city"/>
				<form:errors class="col-4 text-danger" path="city"/>
			</div>
			<div class="form-group row">
				<form:label class="col-3" path="state">State</form:label>
				<form:input class="form-control col-5" path="state"/>
				<form:errors class="col-4 text-danger" path="state"/>
			</div>
			<input type="submit" class="btn btn-info mt-5" value="Add Contact Info">
		</form:form>
	</main>	
</body>
</html>