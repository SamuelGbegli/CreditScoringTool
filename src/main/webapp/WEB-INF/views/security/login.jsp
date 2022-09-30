<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div>
		<h1>Login</h1>
		<form action="/myLogin" method="post">
			Username: <input type="text" name="username" /><br /> Password: <input
				type="password" name="password" /><br /> <input type="submit"
				value="Sign In" /><br /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>