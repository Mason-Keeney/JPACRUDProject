<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Journal Entry</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<h2>Add a new Entry</h2>

	<form action="addJournal.do" method="post">
		<div class="row">
		<div class="form-group col">
			 	<label for="bookName">Book: </label> 
			 <input id="bookName" type="text" name="bookName" />
			 	<label for="pagesRead">Pages Read: </label> 
			 <input id="pagesRead" type="text" name="pagesRead" /> <br> 
			 	<label for="readingSummary">Summary: </label> 
			 <input id="readingSummary" type="text" name="readingSummary" />
		</div>
		<div class="form-group col">
				<label for="workoutOutside">Workout Outside: </label> 
			<input id="workoutOutside" type="text" name="workoutOutside" /> 
				<label for="workout">Workout: </label> 
			<input id="workout" type="text" name="workout" /> <br>
				<label for="workoutOutsideDuration">Duration: </label>
			<input id="workoutOutsideDuration" type="text" name="workoutOutsideDuration" />
				<label for="workoutDuration">Duration: </label> 
			<input id="workoutDuration" type="text" name="workoutDuration" /> 
		</div>
		<div class="form-group col">
				<label for="weight">Weight: </label> 
			<input id=weight type="number" name="weight" /> <br>
				<label for="drankWater">Finished one gallon?</label> 
			<input type="radio" name="drankWater" value="True" />Yes 
			<input type="radio" name="drankWater" value="False" />No
			<input type="Submit" value="Add Entry"/>
		</div>
		</div>
	</form>

	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>