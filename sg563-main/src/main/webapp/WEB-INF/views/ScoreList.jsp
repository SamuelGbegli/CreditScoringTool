<!-- Shows the user's credit score history  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>Past scores</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<span class="navbar-brand">CreditCalculator</span>
			<ul class="navbar-nav">
				<li class="nav-item"><span class="nav-link">${user.name}</span></li>
				<li class="nav-item"><a class="nav-link" href="/userhome">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/calculate">Calculate
						score</a>
				<li class="nav-item"><a class="nav-link" href="/pastscores">Past
						scores</a>
				<li class="nav-item"><a class="nav-link" href="/settings">Settings</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout"
					onclick="return confirm('Log out of your account?');">Log out</a></li>
			</ul>
		</div>
	</nav>
	<div class="container pt-3">
		<h1>Previous scores</h1>
		<c:choose>
			<c:when test="${fn:length(scores) > 0 }">
				<table class="table table-hover">
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
								<td><a href="/delete/${score.id}"
									onclick="return confirm('Scores cannot be recovered when deleted. Continue?');">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<div class="card bg-info text-dark">
					<div class="card-body">
						You have not filled out a score. <a class="text-dark"
							href="/calculate">Click here to create one.</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>