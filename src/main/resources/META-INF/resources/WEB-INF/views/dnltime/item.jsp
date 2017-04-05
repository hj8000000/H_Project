<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
	<style>
		h1,#tableDiv, th{
			text-align: center;
		}

		td{
			font-weight: bold;
		}
	</style>
</head>
<body>

	<h1>Dnltime List</h1>
<div id="tableDiv" class="table-responsive">
	<table class="table table-bordered table-striped container">
			<tr class="success">
				<th>member_srl</th>
				<th>user_ID</th>
				<th>email</th>
				<th>user_Name</th>
				<th>password</th>
				<th>is_admin</th>
			</tr>
			<tr>
				<td class="warning">${dnltime.member.membersrl}</td>
				<td class="warning">${dnltime.member.userid}</td>
				<td class="warning">${dnltime.member.email}</td>
				<td class="warning">${dnltime.member.username}</td>
				<td class="warning">${dnltime.member.password}</td>
				<td class="warning">${dnltime.member.isadmin}</td>
			</tr>
	</table>
</div>

</body>
</html>