<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
		<h1>Login</h1>
		
		<c:if test="${error }">
		<div class="alert alert-danger">
			Username or password is incorrect.
		</div>
		</c:if>
		
		<form action="/myLogin" method="post">
			<div class="container-fluid">
				<label>Username: </label> <input type="text" name="username" />
			</div>
			<br />
			<div class="container-fluid">
				<label>Password:</label> <input type="password" name="password" />
			</div>
			<br />
			<button class="btn btn-primary" type="submit">Sign in</button>
			<br /> <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>

</body>
</html>