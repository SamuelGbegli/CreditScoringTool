<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change password</title>
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
		<h1>Change password</h1>
		<form:form action="/savepassword" method="post" modelAttribute="password">
			Enter current password: <form:input type="password"
				path="oldPassword" name="oldpassword" />
			Enter new password: <form:input type="password" path="newPassword"
				name="newpassword" />
			Confirm new password: <form:input type="password"
				path="confirmPassword" name="confirmpassword" />
			<input type="submit" value="Save" />
		</form:form>
	</div>
</body>
</html>