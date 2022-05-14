<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Journal </title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>
<main class="container-fluid">
<div class="row">
<div class="col-3">
	<h1>Daily Journal</h1>
	<form action="showJournal.do" method="get">
		<input type="text" name="journalid" placeholder="Search by Entry Number (i.e. 2)"/>
		<input class="btn btn-primary" type="submit" value="Search"/>
	</form>
	

	<c:choose>
	<c:when test="${! empty message}">
	<br><hr><br>
	<h5>${message }</h5>
	</c:when>
	</c:choose>
	
</div>
<div class="col-6">
<h3>75 Hard</h3>
	<p>75 Hard is a challenge that is getting significant attention on the internet. 
	Designed to strengthen an individual's will power, the program is based around 5 
	objectives that must be met on a daily basis for 75 days. If you miss any objective, 
	on any day, you start over from day 1.</p>
	<ul>
	<li>Two 45 Minute Workouts</li>
		<ul>
			<li><em>One must be outside</em>
		</ul>
	<li>Choose a diet and stick to it, no cheat meals.</li>
	<li>Read 10 pages</li>
		<ul>
			<li><em>Must be non-fiction</em></li>
		</ul>
	<li> Drink a full gallon of water</li>
		<ul>
			<li><em>and zero alcohol</em></li>
		</ul>
	<li> Take progress pictures (every day) </li>
	</ul>
</div>
<div class="col-3">
<h3>Select an Entry</h3>
<div class="overflowDown">
	<c:forEach var="journal" items="${journals}">
	<form action=showJournal.do method="get">
	<input type="text" name="journalid" hidden="true" value="${journal.id }"/>
	<input class="btn btn-primary btn-custom" type="submit" value="${journal.date}"/>
	
	</form>
	
	</c:forEach>
</div>

</div>
</div>
	<br><br><hr>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</main>
</body>
</html>