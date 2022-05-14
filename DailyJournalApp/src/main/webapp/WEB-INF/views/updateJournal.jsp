<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Journal Entry ${journal.id}</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<h2>Edit</h2>
	<main class="container-fluid">
	<form action="updateJournal.do" method="post">
		<div class="row">
		<div class="form-group col-3">
			<input type="text" name="id" value="${journal.id }" hidden="true">
		<input id="workout" type="text" name="workout" value="${journal.workout }" required/><br>
			<input class="littleIn" id="workoutDuration" type="text" name="workoutDuration" value="${journal.workoutDuration}" required/>
			 <br><br>
			<input id="workoutOutside" type="text" name="workoutOutside" value="${journal.workoutOutside}" required/> <br>
			<input class="littleIn" id="workoutOutsideDuration" type="text" name="workoutOutsideDuration" value="${journal.workoutOutsideDuration}" required/>
			<br><br>
			<input id="photo" type="text" name="photo" value="${journal.photo}">
		</div>
		<div class="form-group col-6">		
			 <input id="bookName" type="text" name="bookName" value="${journal.bookName}" required/><br>
			 <input id="pagesRead" type="text" name="pagesRead" value="${journal.pagesRead}" required/> <br>
			 <textarea class="bigIn text-left" id="readingSummary" type="text" name="readingSummary" >${journal.readingSummary}</textarea>
		</div>
		<div class="form-group col-3">
			<input class="littleIn" id=weight type="text" name="weight" value="${journal.weight}"/> <hr>
				<label for="drankWater">Finished Water?</label> <br>
				<c:choose>
				<c:when test="${journal.drankWater }">
			<input type="radio" name="drankWater" value="True" checked/>Yes <br> 
			<input type="radio" name="drankWater" value="False" />No
				</c:when>
				<c:otherwise>
			<input type="radio" name="drankWater" value="True"/>Yes <br> 
			<input type="radio" name="drankWater" value="False" checked/>No
				
				</c:otherwise>
				</c:choose>
		</div>
		</div>
		<br><br>
		<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<input class="btn btn-primary" type="Submit" value="Complete Edit"/>
		</div>
		<div class="col-3"></div>
		</div>
	</form>
	<br><br><hr>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
	</main>

</body>

</html>