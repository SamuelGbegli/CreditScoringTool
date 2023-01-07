<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change password</title>
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
	<div class="container mt-3">
		<h1>Change password</h1>
		<form:form action="/savepassword" method="post" modelAttribute="password">
			<label>Enter current password: </label><form:input type="password"
				path="oldPassword" name="oldpassword" /><br/>
			<label>Enter new password: </label><form:input type="password" path="newPassword"
				name="newpassword" /><br/>
			<label>Confirm new password: </label><form:input type="password"
				path="confirmPassword" name="confirmpassword" /><br/>
			<button class="btn btn-primary" type=submit> Save </button>
		</form:form>
	</div>
</body>
</html>