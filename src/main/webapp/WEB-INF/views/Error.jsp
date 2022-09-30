<!-- Shown if a logged in user attempts to view a score that doesn't exist-->

<!DOCTYPE html>
<html>
<head>
<title>Error</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<h2>Error</h2>
	<p>The page cannot be accessed.</p>
</body>
</html>