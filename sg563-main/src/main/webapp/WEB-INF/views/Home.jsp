<!DOCTYPE html>
<html>
<head>
<title>CreditCalculator</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<div>
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


		<div class="container pt-3">
			<h1>Welcome</h1>

		<p>Login or register to calculate credit scores and save them.</p>
			<a href=/login-form class="btn btn-primary">Login</a> <a href=/register
				class="btn btn-secondary">Register</a>
				<br/>
				<br/>
				<p>You can also use the calculator without registering to see how it works.</p>
				 <a href=/demo class="btn btn-primary">Try it out</a>
		</div>
	</div>
</body>
</html>