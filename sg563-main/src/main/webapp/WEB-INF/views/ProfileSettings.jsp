<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Profile preferences</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
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
	<h1>Profile preferences</h1>

	<form:form action="saveprofilepreferences" method="post"
		modelAttribute="profile">

		<c:choose>
			<c:when
				test="${  user.defaults == 'Use profile, and show all options'}">
				<form:radiobutton path="result" id="profile0"
					value="Use profile, and show all options" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="result" id="profile0"
					value="Use profile, and show all options" />
			</c:otherwise>
		</c:choose>
			Use profile<br />
		<c:choose>
			<c:when test="${  user.defaults == 'Do not use profile'}">
				<form:radiobutton path="result" id="profile2"
					value="Do not use profile" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="result" id="profile2"
					value="Do not use profile" />
			</c:otherwise>
		</c:choose>
			Do not use profile<br />
		<button class="btn btn-primary" type=submit> Save </button>
	</form:form>
</div>
</body>
</html>