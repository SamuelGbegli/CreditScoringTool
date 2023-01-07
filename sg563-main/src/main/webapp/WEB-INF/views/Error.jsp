<!-- Shown if a logged in user attempts to view a score that doesn't exist-->

<!DOCTYPE html>
<html>
<head>
<title>Error</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
	<h2>Error</h2>
	<p>The page cannot be accessed.</p>
	</div>
</body>
</html>