<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Homepage</title>
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
		<h1>Welcome</h1>
		<div>
			<c:choose>
				<c:when test="${fn:length(scores) > 0 }">
					<c:forEach var="score" items="${scores}" varStatus="count">
						<c:if test="${count.count eq fn:length(scores)}">
							<p>Last score was calculated on ${score.date }</p>
							<p>Loan amount: ${score.loan }</p>
							<p>Score: ${score.score }</p>
							<a href="/view/${score.id}">View</a>
						</c:if>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<p>You have not filled out a score.</p>
				</c:otherwise>
			</c:choose>
		</div>
		<br /> <a href="/pastscores">View past scores</a> <br /> <a
			href="/calculate">Calculate score</a>
	</div>
</body>
</html>