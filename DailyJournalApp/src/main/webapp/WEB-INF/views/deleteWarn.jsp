<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Are you sure you want to delete this Entry?</h1>
<form action="deleteJournal.do" method="post">
<input type="text" name=id value="${journal.id}" hidden="true">
<input type="submit" value="Yes">
</form>

<form action="index.do">
<input type="submit" value="No">
</form>

</body>
</html>