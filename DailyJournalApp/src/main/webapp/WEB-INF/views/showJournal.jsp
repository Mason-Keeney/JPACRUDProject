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
	<div id="journalDisplay" class="container">
		<c:choose>
			<c:when test="${! empty journal}">
				<h2>75 Hard Challenge Journal Entry: ${journal.date}</h2>
				<div class="row">
					<div id="bookInfo" class="col">
						<h4 class="tableHead">Workouts</h4>
						<table>
							<tr>
								<td>Workout</td>
								<td>&emsp;&emsp;</td>
								<td>Outdoor Workout</td>
							</tr>
							<tr>
								<td>${journal.workout}</td>
								<td></td>
								<td>${journal.workoutOutside}</td>
							</tr>
							<tr>
								<td>${journal.workoutDuration}minutes</td>
								<td></td>
								<td>${journal.workoutOutsideDuration}minutes</td>
							</tr>
						</table>

					</div>

					<div class="col">

						<h4>${journal.bookName}</h4>
						<p>Pages: ${journal.pagesRead}</p>
						<p>${journal.readingSummary}</p>
					</div>

					<div class="col">
						<h4>Other Stats</h4>
						<ul>
							<li>Weight: ${journal.weight}</li>
							<c:choose>
								<c:when test="${journal.drankWater }">
									<li>Finished 1 Gallon</li>
								</c:when>
								<c:otherwise>
									<li>Didn't drink enough water</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>

			</c:when>
		</c:choose>
	</div>
	<form action="updateJournal.do">
		<input type="text" name="id" value="${journal.id}" hidden="true">
		<input type="Submit" value="Update this Entry">
	</form>
	<form action="deleteJournal.do">
		<input type="text" name="id" value="${journal.id}" hidden="true">
		<input type="Submit" value="Delete this Entry">
	</form>
	<form action="addJournal.do" method="get">
	<input type="submit" value="Add new Entry">
	</form>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>