<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="container">
<h1>Team delete</h1>
	<table class="animated bounceInLeft table table-striped">
		<tr class="info" align="center">
			<td><b>Idno</b></td>
			<td><b>Team</b></td>
		</tr>
		<tr align="center">
				<td>${manchester.idno}</td>
				<td>${manchester.team}</td>
		</tr>
	</table>
	<form action="/manchester/unregister/${idno}" method="post">
		<input type="submit" value="Team delete"  class="btn-sm btn-danger">
	</form>
</div>
</body>
</html>