<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>item.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

<div class="container">
	<div>
		<h1>Board</h1>
		<div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><h3>${memo.mname}</h3>
						<div align="right">
							<fmt:formatDate value="${memo.mdate}" pattern="yyyy/MM/dd"/>
						</div></td>
				</tr>
				<tr>
					<td colspan="2" height="500px">${memo.mcontent}</td>
				</tr>
				<tr>
					<td>
					<div style="float:right" align="left">
						<a href="/memo/modify/${memo.mno}?pageNo=${param.pageNo}" class="btn btn-warning" id="modifyMemo">수정</a>
						<a href="/memo/page/${param.pageNo}" class="btn btn-info">목록</a>
					</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
	
	<hr>
	</div>
</div>

</body>
</html>