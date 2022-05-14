<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Journal Display</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<h1>Daily Journal</h1>
	<form action="showJournal.do" method="get">
		<input type="text" name="journalid"/>
		<input type="submit" value="Search"/>
	</form>
	

	<c:choose>
	<c:when test="${! empty message}">
	<h5>${message }</h5>
	</c:when>
	</c:choose>
	
	<form action="addJournal.do" method="get">
	<input type="submit" value="Add new Entry">
	</form>

	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>