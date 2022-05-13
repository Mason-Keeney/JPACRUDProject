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
	<p>Currently Reading: ${journal.bookName }</p>

	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>