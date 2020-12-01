<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donut Details</title>
</head>
<body>
	<h1>Donut Details</h1>
	
	<p>Name: ${donut.name }</p>
	
	<p>Calories: ${ donut.calories }</p>
	
	<p>Extras:</p> 
	<ul>
	<c:forEach var="extra" items="${ donut.extras}">
		<li>${extra}</li>
	</c:forEach>
	
	</ul>
	<a href="/">Back to Home </a>
</body>
</html>