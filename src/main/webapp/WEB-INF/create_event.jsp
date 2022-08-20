<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<title>Create an Event</title>
</head>
<body>
<div class="in-line">
<h2 class="float-left"><a href="/books">back to the shelves</a></h2>
</div>

<div class="content d-flex justify-content-around align-items-center">
<div class="content-left col-4">
INSERT GOOGLE MAPS
</div>
<div class="content-right form col-8">

		<form:form action="/events/create" method="post" modelAttribute="event">
<%-- 			<form:input type="hidden" path="user" value="${user.id }" /> --%>

			<div class="form-group d-flex justify-content-between my-2">
				<form:label path="name" class="w-25">Title  </form:label>
				<form:input type="text" path="name" class="w-75" />
			</div>
			<form:errors class="text-danger" path="name" />

			<div class="form-group d-flex justify-content-between my-2">
				<form:label path="date" class="w-25">Date  </form:label>
				<form:input type="date" path="date" class="w-75" />
			</div>
			<form:errors class="text-danger" path="date" />

			<div class="form-group d-flex justify-content-between my-2">
				<form:label path="time" class="w-25">Time </form:label>
				<form:input type="time" path="time" class="w-75" />
			</div>
			<form:errors class="text-danger" path="time" />

			<div class="form-group d-flex justify-content-between my-2">
				<form:label path="location" class="w-25">location </form:label>
				<form:input type="text" path="location" class="w-75" />
			</div>
			<form:errors class="text-danger" path="price" />

			<div class="form-group d-flex justify-content-between my-2">
				<form:label path="description" class="w-25">Description </form:label>
				<form:textarea path="description" class="w-75" />
			</div>
			<form:errors class="text-danger" path="description" />
			<div>
				<a href="/classes"><button class="btn btn-warning">Cancel</button></a>
				<input type="submit" value="Submit" class="btn btn-info  mx-2">
			</div>
		</form:form>

</div>
</div>



</div>


	



</body> --%>
</html>