<!DOCTYPE html>
<html>
<head>
<title>Score results</title>
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
				<li class="nav-item"><a class="nav-link" href="/demo">Try
						it out</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">Register</a>
				<li class="nav-item"><a class="nav-link" href="/login-page">Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container mt-3">
		<h1>Results</h1>
		<p>For a loan of £${score.loan} your score is:</p>
		<h2>${score.score}</h2>
		<span>This is just a sample of your credit report. To find out more,
			<a href="/register">register for a free account.</a></span>
		<br /> <a href="/login-page">Already
			have an account? Click here to login</a>
	</div>
</body>
</html>