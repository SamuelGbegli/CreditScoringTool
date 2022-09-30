<!--Page for a detailed analysis for a user's score-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Score analysis</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<h3>About your score</h3>
	<p>Calculated on ${summary.date }</p>
	<p>Loan amount: £${summary.loan }</p>
	<p>Score: ${summary.score }</p>
	<p>Odds of defaulting: 1:${summary.odds }</p>
	<br />
	<c:forEach items="${summary.scoreInput }" var="x">
		<p>${x.key }:${x.value }</p>
	</c:forEach>
	<br />

	<a href="/export/{id}">Export to PDF</a>
	<a href="/send/${score.id}">Export to email</a>
	<br />

	<a href="/calculate">Calculate another score</a>
	<a href="/userhome">Go to home page</a>
	<a href="/pastscores">See score list</a>

</body>
</html>