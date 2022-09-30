<!-- Shows the user's credit score history  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>Past scores</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<h1>Previous scores</h1>
	<c:choose>
		<c:when test="${fn:length(scores) > 0 }">
			<table>
				<tr>
					<th>Date</th>
					<th>Loan amount</th>
					<th>Score</th>
				</tr>
				<tbody>
					<c:forEach items="${scores}" var="score">
						<tr>
							<td>${score.date}</td>
							<td>£${score.loan}</td>
							<td>${score.score}</td>
							<td><a href="/view/${score.id}">View</a></td>
							<td><a href="/delete/${score.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p>You have not filled out a score.</p>
		</c:otherwise>
	</c:choose>


	<br />
</body>
</html>