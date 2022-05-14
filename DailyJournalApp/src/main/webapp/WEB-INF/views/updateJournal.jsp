<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Journal Entry</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<h2>Edit Entry</h2>

	<form action="updateJournal.do" method="post">
		<div class="row">
		<div class="form-group col">
		<input type="text" name="id" value="${journal.id }" hidden="true">
			 	<label for="bookName">Book: </label> 
			 <input id="bookName" type="text" name="bookName" value="${journal.bookName}"/>
			 	<label for="pagesRead">Pages Read: </label> 
			 <input id="pagesRead" type="text" name="pagesRead" value="${journal.pagesRead}"/> <br> 
			 	<label for="readingSummary">Summary: </label> 
			 <input id="readingSummary" type="text" name="readingSummary" value="${journal.readingSummary}" />
		</div>
		<div class="form-group col">
				<label for="workoutOutside">Workout Outside: </label> 
			<input id="workoutOutside" type="text" name="workoutOutside" value="${journal.workoutOutside}" /> 
				<label for="workout">Workout: </label> 
			<input id="workout" type="text" name="workout" value="${journal.workout }"/> <br>
				<label for="workoutOutsideDuration">Duration: </label>
			<input id="workoutOutsideDuration" type="text" name="workoutOutsideDuration" value="${journal.workoutOutsideDuration}"/>
				<label for="workoutDuration">Duration: </label> 
			<input id="workoutDuration" type="text" name="workoutDuration" value="${journal.workoutDuration }"/> 
		</div>
		<div class="form-group col">
				<label for="weight">Weight: </label> 
			<input id=weight type="number" name="weight" value="${journal.weight}"/> <br>
				<label for="drankWater">Finished one gallon?</label>
				<c:choose>
				<c:when test="${journal.drankWater}">
			<input type="radio" name="drankWater" value="True" checked="checked"/>Yes 
			<input type="radio" name="drankWater" value="False" />No
				</c:when>
				<c:otherwise>
			<input type="radio" name="drankWater" value="True" />Yes 
			<input type="radio" name="drankWater" value="False" checked="checked"/>No
				</c:otherwise>
				</c:choose> 
			<input type="Submit" value="Edit Entry"/>
		</div>
		</div>
	</form>

	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>