<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Journal Entry ${journal.id}</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<main id="journalDisplay" class="container-fluid">
		<c:choose>
			<c:when test="${! empty journal}">
			<div class=row>
				<h2> Daily Journal - ${journal.date}</h2>
				<h5><em>Entry: ${journal.id}</em></h5>
			</div>
					<div class=row>
			<div class="col-2">
				<img src="${journal.photo}"/>
			</div>
			<div class="col-4">
				<h4 class="tableHead">Workouts</h4>
					<table>	
							<tr>
								<td><h5>${journal.workout}</h5></td>
								<td>&emsp;&emsp;</td>
								<td><h6>${journal.workoutDuration}m</h6></td>
							</tr>
							<tr>
								<td><h5>${journal.workoutOutside}</h5></td>
								<td></td>
								<td><h6>${journal.workoutOutsideDuration}m</h6></td>
							</tr>
						</table>
						<br><br>
						<h4>Reading</h4>
						<h5>${journal.bookName}</h5>
						<p><em>Pages: ${journal.pagesRead}</em><br>
						${journal.readingSummary}</p>
			</div>
			<div class="col-6">
			<h4>Other Info</h4>
						<ul>
							<li>Weight: ${journal.weight}</li>
							<c:choose>
								<c:when test="${journal.drankWater }">
									<li>Finished Water</li>
								</c:when>
								<c:otherwise>
									<li>Didn't drink enough water</li>
								</c:otherwise>
							</c:choose>
						</ul>
						
			</div>
		</div>
		<br><br>
				<div class="row">
					<div class="col-4">
					
					

					</div>

					<div class="col-4">
						
					</div>

					<div class="col-4">
						
					</div>
				</div>

			</c:when>
		</c:choose>
		<br><br>
	
	
	<div class="row">
	<div class="col-2">
		<form action="previous.do">
		<input type="text" name="id" value="${journal.id}" hidden="true">
		<input class="btn btn-primary" type="Submit" value="Previous">
	</form>
	<br>
	<form action="updateJournal.do">
		<input type="text" name="id" value="${journal.id}" hidden="true">
		<input class="btn btn-primary" type="Submit" value="Edit">
	</form>
	</div>
	<div class="col-2">
		<form action="next.do">
			<input type="text" name="id" value="${journal.id}" hidden="true">
			<input class="btn btn-primary" type="Submit" value="Next">
		</form>
		<br>
	<form action="deleteJournal.do">
		<input type="text" name="id" value="${journal.id}" hidden="true">
		<input class="btn btn-primary" type="Submit" value="Delete">
	</form>
	</div>
	<div class="col-8"></div>
	</div>
	
	<br><br><hr>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
	</main>
	
	
</body>
</html>