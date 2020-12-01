<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donut API Practice 7</title>
</head>
<body>
	<h1>Donuts</h1>
	
	<c:forEach var="donut" items="${ donuts }">		
		<ul>		
				<li><a href="/donut/${donut.id}">${donut.name}</a></li>
		</ul>						
	</c:forEach>
</body>
</html>