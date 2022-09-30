<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div>
		<h1>Sign up</h1>

		<form:form action="/createuser" method="post" modelAttribute="user">
			<p>Email</p>
			<form:input type=text name="email" path="name" />
			<p>Username</p>
			<form:input type=text name="username" path="name" />
			<p>Password</p>
			<form:input type=password name="password" path="password" />
			<p>Confirm password</p>
			<form:input type=password name="confirmpassword" path="confirmpassword" />
			<input type=submit value="Sign up">
		</form:form>

		<p>Already have an account?</p>
		<a href=/login>Click here to login</a>
	</div>
</body>
</html>