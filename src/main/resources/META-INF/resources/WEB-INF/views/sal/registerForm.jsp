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
<title>registerForm.jsp</title>
<link rel="stylesheet" href="/css/RegisterForm.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	 $( function() {
    	$( "#datepicker").datepicker({
    		
    	});
  } );
	
</script>
</head>
<body>
<h1>Salary Register Form</h1>
	<div class="preButton">
		<a class="btn btn-sm" href="/sal/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Sal Page</a>
	</div>

<form:form action="/sal/register?pageNo=${param.pageNo}" method="post" modelAttribute="salForm">
	<div class="registerBox">
		<!-- basicSal -->
		<div>
			<label for="basicSal" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Basic Salary</label>
			<form:input path="basicSal" class="Define-Input-Box"/>
			<form:errors path="basicSal" class="Define-Error-Region"/>
		</div>
		<!-- overtimeSal -->
		<div>
			<label for="overtimeSal" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Overtime Salary</label>
			<form:input path="overtimeSal" class="Define-Input-Box"/>
			<form:errors path="overtimeSal" class="Define-Error-Region"/>
		</div>
		<!-- comm -->
		<div>
			<label for="comm" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Commission</label>
			<form:input path="comm" class="Define-Input-Box"/>
			<form:errors path="comm" class="Define-Error-Region"/>
		</div>
		<!-- aidSal -->
		<div>
			<label for="aidSal" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Aid Salary</label>
			<form:input path="aidSal" class="Define-Input-Box"/>
			<form:errors path="aidSal" class="Define-Error-Region"/>
		</div>
		<!-- saldate -->
		<div>
			<label for="saldate" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			Salary Date</label>
			<form:input path="saldate" id="datepicker"/>
			<form:errors path="saldate" class="Define-Error-Region"/>
			</div>
		</div>
		<!-- membersrl -->
		<div>
			<label for="membersrl" class="Define-Values">
			<span class="glyphicon glyphicon-pencil"></span>
			<a href="/sal/GetMemberLists" target="_blank">Member Serial</a></label>
			<form:input path="membersrl" class="Define-Input-Box"/>
			<form:errors path="membersrl" class="Define-Error-Region"/>
		</div>
		<div>
			<form:errors/>
		</div> 
		<div class="registerButton">
			<input class="btn btn-info" type="submit" value="Register Sal">	
		</div>
	</div>
	
	
</form:form>

</body>
</html>