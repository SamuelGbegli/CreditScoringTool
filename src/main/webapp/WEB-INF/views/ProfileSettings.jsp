<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Profile preferences</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
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
			Use profile, and show all options<br />
		<c:choose>
			<c:when
				test="${  user.defaults == 'Use profile, and only show unfilled options'}">
				<form:radiobutton path="result" id="profile1"
					value="Use profile, and only show unfilled options" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="result" id="profile1"
					value="Use profile, and only show unfilled options" />
			</c:otherwise>
		</c:choose>
			Use profile, and only show unfilled options<br />
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
		<input type=submit value="Save" />
	</form:form>

</body>
</html>