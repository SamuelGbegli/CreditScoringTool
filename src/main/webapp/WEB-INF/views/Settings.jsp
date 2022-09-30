<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Settings</title>
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
		<h1>Settings</h1>
		<div>
			<a href="/profile">Change profile</a> <a href="/profilesettings">Profile
				preferences</a> <a href="/changeemail">Change email</a> <a
				href="/changepassword">Change password</a> <a href="/deletescores">Delete
				all scores</a>
		</div>
	</div>
</body>
</html>