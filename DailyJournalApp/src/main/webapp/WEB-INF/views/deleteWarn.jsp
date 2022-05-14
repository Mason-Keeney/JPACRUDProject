<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WARNING</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>

</head>
<body>
<main class="container-fluid">
<div class="row">
<h1>Are you sure you want to delete this Entry?</h1>
</div>
<div class="row">
<div class="col-2">
<form action="deleteJournal.do" method="post">
<input type="text" name=id value="${journal.id}" hidden="true">
<input class="btn btn-warning" type="submit" value="Yes">
</form>
</div>
<div class=col-2>
<form action="index.do">
<input class="btn btn-warning"type="submit" value="No">
</form>
</div>
</div>
<br><br><hr>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</main>


</body>
</html>