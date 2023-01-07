<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Homepage</title>
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

	<div class="container mt-3">
		<h1>Welcome</h1>
		<div class="card bg-info text-dark">
			<c:choose>
				<c:when test="${fn:length(scores) > 0 }">
					<c:forEach var="score" items="${scores}" varStatus="count">
						<c:if test="${count.count eq fn:length(scores)}">
							<div class="card-body">
								<p>Last score was calculated on ${score.date }</p>
								<p>Loan amount: £${score.loan }</p>
								<p>Score: ${score.score }</p>
								<a type="button" class="btn btn-secondary"
									href="/view/${score.id}">See summary</a> <br />
							</div>
						</c:if>
					</c:forEach>
				</c:when>
				<c:otherwise>
						<div class="card-body">You have not filled out a score.</div>
				</c:otherwise>
			</c:choose>
		</div>
		<br />
		<a type="button" class="btn btn-primary" href="/calculate">Calculate
			a new score</a> <a type="button" class="btn btn-secondary"
			href="/pastscores">View past scores</a>
	</div>
</body>
</html>