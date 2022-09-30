<!DOCTYPE html>
<html>
<head>
<title>Score results</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<h1>Score results</h1>
	<p>For a loan of £${score.loan} you scored:</p>
	<h2>${score.score}</h2>

	<a href="/view/${score.id}">See more</a>
	<a href="/calculate">Calculate another score</a>
	<a href="/userhome">Go home</a>

</body>
</html>