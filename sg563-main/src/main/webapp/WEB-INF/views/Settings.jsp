<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Settings</title>
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
	<div class="container pt-3">
		<h1>Settings</h1>
		<div>
			<ul>
			<li><a href="/profile">Change profile</a></li>
			<li><a href="/profilesettings">Profile
				preferences</a></li>
			<li><a href="/changeemail">Change email</a></li>
			<li><a href="/changepassword">Change password</a></li>
			<c:if test="${scores > 0 }">
			<li><a href="/deleteall"
				onclick="return confirm('Scores cannot be recovered when deleted. Continue?');">Delete
				all scores</a></li></c:if>
			</ul>  
				 
		</div>
	</div>
</body>
</html>