<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
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

			<h1>Register</h1>
			<form:form action="/createuser" name="register" method="post" onsubmit="return validateUserRegister()" modelAttribute="user">
				<div class="container-fluid">
					Email:
					<form:input type="text" name="email" path="email" required="true"/>
				</div>
				<br />
				<div class="container-fluid">
					Username:
					<form:input type="text" name="username" path="name" required="true"/>

				</div>
				<br />
				<div class="container-fluid">
					Password:
					<form:input type="password" name="password" path="password" required="true"/>

				</div>
				<br />
				<div class="container-fluid">
					Confirm password:
					<form:input type="password" name="confirmpassword"
						path="confirmpassword" required="true"/>

				</div>
				<br />
				<button class="btn btn-primary" type=submit>Create account</button>
			</form:form>
			<br /> <span>Already have an account? <a href=/login>Click
					here to login</a></span>
		</div>
	</div>
</body>
</html>