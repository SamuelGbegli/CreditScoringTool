<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change email</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<div>
		<h1>Change email</h1>
		<p>
			Your current email is <b>${user.email }</b>.
		</p>
		<form:form action="/saveemail" method="post" modelAttribute="profile">
			Enter email: <form:input type="text" name="email" path="result" />
			<input type="submit" value="Save" />
		</form:form>
	</div>
</body>
</html>