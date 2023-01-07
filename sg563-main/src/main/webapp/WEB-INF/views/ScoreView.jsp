<!--Page for a detailed analysis for a user's score-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Score analysis</title>
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
			<li class="nav-item"><a class="nav-link"
				href="/settings">Settings</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/logout" onclick="return confirm('Log out of your account?');">Log out</a></li>
		</ul>
	</div>
	</nav>
	<div class="container pt-3">
	<h3>About your score</h3>
	<p>Calculated on ${summary.date }</p>
	<p>Loan amount: £${summary.loan }</p>
	<p>Score: ${summary.score }</p>
	<p>Odds of defaulting: 1:${summary.odds }</p>
	<br />
	<c:forEach items="${summary.scoreInput }" var="x">
		<p>${x.key }: ${x.value }</p>
	</c:forEach>
	<br />

	<a href="/export/${score.id}" class="btn btn-primary">Export to PDF</a>
	<br />
	<br />

		<a href="/calculate" class="btn btn-secondary">Calculate another
			score</a> <a href="/userhome" class="btn btn-secondary">Go to home
			page</a> <a href="/pastscores" class="btn btn-secondary">See score
			list</a>
		<br />
</div>
</body>
</html>