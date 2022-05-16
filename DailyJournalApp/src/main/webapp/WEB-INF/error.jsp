<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>
<h1>Error</h1>
<p></p>
<c:choose>
	<c:when test="${not empty error }">
		<c:choose>
		<c:when test="${status == 400 }">
			<h3>${error } - Unable to determine input</h3>
			<p>${timestamp }</p>
		</c:when>
		<c:when test="${ status == 500 }">
		<h3>Our server seems to be having some difficulty.</h3>
		<p>${timestamp }</p>
		</c:when>
		</c:choose>
	</c:when>
</c:choose>

<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>