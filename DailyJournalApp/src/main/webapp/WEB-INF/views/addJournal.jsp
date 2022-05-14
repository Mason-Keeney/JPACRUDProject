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
	<main class="container-fluid">
	<form action="addJournal.do" method="post">
		<div class="row">
		<div class="form-group col-3">
		<input id="workout" type="text" name="workout" placeholder="Workout" required/><br>
			<input class="littleIn" id="workoutDuration" type="text" name="workoutDuration" placeholder="Duration" required/>
			 <br><br>
			<input id="workoutOutside" type="text" name="workoutOutside" placeholder="Outdoor Workout" required/> <br>
			<input class="littleIn" id="workoutOutsideDuration" type="text" name="workoutOutsideDuration" placeholder="Duration" required/>
			<br><br>
			<input id="photo" type="text" name="photo" placeholder="Paste Image URL">
		</div>
		<div class="form-group col-6">		
			 <input id="bookName" type="text" name="bookName" placeholder="Book Name" required/><br>
			 <input id="pagesRead" type="text" name="pagesRead" placeholder="Page Read" required/> <br>
			 <textarea class="bigIn" id="readingSummary" type="text" name="readingSummary" placeholder="Summary (optional))"></textarea>
		</div>
		<div class="form-group col-3">
			<input class="littleIn" id=weight type="text" name="weight" placeholder="Weight (optional)"/> <hr>
				<label for="drankWater">Finished Water?</label> <br>
			<input type="radio" name="drankWater" value="True" />Yes <br> 
			<input type="radio" name="drankWater" value="False" />No
		</div>
		</div>
		<br><br>
		<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<input class="btn btn-primary" type="Submit" value="Add Entry"/>
		</div>
		<div class="col-3"></div>		
		</div>
	</form>

	<br><br><hr>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
	</main>

</body>
</html>