<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Set user profile</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		${user.name } <a href="/userhome">Home</a> <a href="/calculate">Calculate
			score</a> <a href="/pastscores">Past scores </a> <a href="/settings">Settings</a>
		<a href="/logout">Log out</a>
	</div>
	<h1>Edit user profile</h1>

	<form:form action="saveprofile" method="post" modelAttribute="profile">

		<p>What is your current employment status?</p>
		<c:choose>
			<c:when test="${  user.employment == null}">
				<form:radiobutton path="employment" id="employment" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment" />
			</c:otherwise>
		</c:choose>
		Leave blank<br />
		<c:choose>
			<c:when test="${  user.employment == 'Full-time'}">
				<form:radiobutton path="employment" id="employment0"
					value="Full-time" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment0"
					value="Full-time" />
			</c:otherwise>
		</c:choose>
			Full-time<br />
		<c:choose>
			<c:when test="${  user.employment == 'Part-time'}">
				<form:radiobutton path="employment" id="employment1"
					value="Part-time" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment1"
					value="Part-time" />
			</c:otherwise>
		</c:choose>
			Part-time<br />
		<c:choose>
			<c:when test="${  user.employment == 'Homemaker'}">
				<form:radiobutton path="employment" id="employment2"
					value="Homemaker" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment2"
					value="Homemaker" />
			</c:otherwise>
		</c:choose>
			Homemaker<br />
		<c:choose>
			<c:when test="${  user.employment == 'Retired'}">
				<form:radiobutton path="employment" id="employment3" value="Retired"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment3" value="Retired" />
			</c:otherwise>
		</c:choose>		
			Retired<br />
		<c:choose>
			<c:when test="${  user.employment == 'Student'}">
				<form:radiobutton path="employment" id="employment4" value="Student"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="employment" id="employment4" value="Student" />
			</c:otherwise>
		</c:choose>		
			Student<br />

		<p>How long have you been in your current employment?</p>
		<c:choose>
			<c:when test="${  user.employment == null}">
				<form:radiobutton path="time" id="time" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time" />
			</c:otherwise>
		</c:choose>
		Leave blank<br />
		<c:choose>
			<c:when test="${  user.time == 'Not in employment'}">
				<form:radiobutton path="time" id="time0" value="Not in employment"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time0" value="Not in employment" />
			</c:otherwise>
		</c:choose>
			Not in employment<br />
		<c:choose>
			<c:when test="${  user.time == 'Less than 1 year'}">
				<form:radiobutton path="time" id="time1" value="Less than 1 year"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time1" value="Less than 1 year" />
			</c:otherwise>
		</c:choose>
			Less than 1 year<br />
		<c:choose>
			<c:when test="${  user.time == '1 to 3 years'}">
				<form:radiobutton path="time" id="time2" value="1 to 3 years"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time2" value="1 to 3 years" />
			</c:otherwise>
		</c:choose>
			1 to 3 years<br />
		<c:choose>
			<c:when test="${  user.time == '3 to 10 years'}">
				<form:radiobutton path="time" id="time3" value="3 to 10 years"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time3" value="3 to 10 years" />
			</c:otherwise>
		</c:choose>
			3 to 10 years<br />
		<c:choose>
			<c:when test="${  user.time == 'More than 10 years'}">
				<form:radiobutton path="time" id="time4" value="More than 10 years"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="time" id="time4" value="More than 10 years" />
			</c:otherwise>
		</c:choose>
			More than 10 years<br />


		<p>What is your residential status?</p>
		<c:choose>
			<c:when test="${  user.employment == null}">
				<form:radiobutton path="resident" id="resident" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="resident" id="resident" />
			</c:otherwise>
		</c:choose>
		Leave blank<br />
		<c:choose>
			<c:when test="${  user.resident == 'Homeowner'}">
				<form:radiobutton path="resident" id="resident0" value="Homeowner"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="resident" id="resident0" value="Homeowner" />
			</c:otherwise>
		</c:choose>
			Homeowner<br />
		<c:choose>
			<c:when test="${  user.resident == 'Renting'}">
				<form:radiobutton path="resident" id="resident1" value="Renting"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="resident" id="resident1" value="Renting" />
			</c:otherwise>
		</c:choose>
			Renting<br />
		<c:choose>
			<c:when test="${  user.resident == 'Living with parents'}">
				<form:radiobutton path="resident" id="resident2"
					value="Living with parents" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="resident" id="resident2"
					value="Living with parents" />
			</c:otherwise>
		</c:choose>
			Living with parents<br />


		<p>What is your annual income?</p>
		<c:choose>
			<c:when
				test="${ user.defaults == 'Use profile, and show all options'}">
				<form:input type="number" required="true" path="income"
					value="${user.income }" />
			</c:when>
			<c:otherwise>
				<form:input type="number" required="true" path="income" />
			</c:otherwise>
		</c:choose>

		<p>What is the remaining balance on your mortgage?</p>
		<c:choose>
			<c:when test="${  user.employment == null}">
				<form:radiobutton path="mortgage" id="mortgage" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage" />
			</c:otherwise>
		</c:choose>
		Leave blank<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'Less than £40,000'}">
				<form:radiobutton path="mortgage" id="mortgage0"
					value="Less than £40,000" checked="true" />
			Less than £40,000<br />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage0"
					value="Less than £40,000" />
			Less than £40,000<br />
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${  user.mortgage == 'Between £40,000 and £60,000'}">
				<form:radiobutton path="mortgage" id="mortgage1"
					value="Between £40,000 and £60,000" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage1"
					value="Between £40,000 and £60,000" />
			</c:otherwise>
		</c:choose>
			Between £40,000 and £60,000<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'Between £60,000 and £100,000'}">
				<form:radiobutton path="mortgage" id="mortgage2"
					value="Between £60,000 and £100,000" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage2"
					value="Between £60,000 and £100,000" />
			</c:otherwise>
		</c:choose>
			Between £60,000 and £100,000<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'Between £100,000 and £150,000'}">
				<form:radiobutton path="mortgage" id="mortgage3"
					value="Between £100,000 and £150,000" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage3"
					value="Between £100,000 and £150,000" />
			</c:otherwise>
		</c:choose>
			Between £100,000 and £150,000<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'Between £150,000 and £250,000'}">
				<form:radiobutton path="mortgage" id="mortgage4"
					value="Between £150,000 and £250,000" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage4"
					value="Between £150,000 and £250,000" />
			</c:otherwise>
		</c:choose>
			Between £150,000 and £250,000<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'More than £250,000'}">
				<form:radiobutton path="mortgage" id="mortgage5"
					value="More than £250,000" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage5"
					value="More than £250,000" />
			</c:otherwise>
		</c:choose>
			More than £250,000<br />
		<c:choose>
			<c:when test="${  user.mortgage == 'Not a home owner'}">
				<form:radiobutton path="mortgage" id="mortgage6"
					value="Not a home owner" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="mortgage" id="mortgage6"
					value="Not a home owner" />
			</c:otherwise>
		</c:choose>
			Not a home owner<br />

		<p>How many credit cards do you have?</p>
		<c:choose>
			<c:when
				test="${ user.defaults == 'Use profile, and show all options'}">
				<form:input type="number" required="true" path="creditcards"
					value="${user.creditcards }" />
			</c:when>
			<c:otherwise>
				<form:input type="number" required="true" path="creditcards" />
			</c:otherwise>
		</c:choose>



		<p>Overdue credit agreements</p>
		<c:choose>
			<c:when test="${  user.overdue == null}">
				<form:radiobutton path="overdue" id="overdue" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="overdue" id="overdue" />
			</c:otherwise>
		</c:choose>
			Leave blank<br />
		<c:choose>
			<c:when test="${ user.overdue == '0 days'}">
				<form:radiobutton path="overdue" id="overdue0" value="0 days"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="overdue" id="overdue0" value="0 days" />
			</c:otherwise>
		</c:choose>
			0 days<br />
		<c:choose>
			<c:when test="${  user.overdue == 'Between 1 and 30 days'}">
				<form:radiobutton path="overdue" id="overdue1"
					value="Between 1 and 30 days" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="overdue" id="overdue1"
					value="Between 1 and 30 days" />
			</c:otherwise>
		</c:choose>
			Between 1 and 30 days<br />
		<c:choose>
			<c:when test="${  user.overdue == 'Between 31 and 60 days'}">
				<form:radiobutton path="overdue" id="overdue2"
					value="Between 31 and 60 days" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="overdue" id="overdue2"
					value="Between 31 and 60 days" />
			</c:otherwise>
		</c:choose>
			Between 31 and 60 days<br />
		<c:choose>
			<c:when test="${  user.overdue == 'More than 60 days'}">
				<form:radiobutton path="overdue" id="overdue3"
					value="More than 60 days" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="overdue" id="overdue3"
					value="More than 60 days" />
			</c:otherwise>
		</c:choose>
			More than 60 days<br />

		<p>Have you declared bankruptcy in the last 5 years?</p>
		<c:choose>
			<c:when test="${  user.bankruptcy == null}">
				<form:radiobutton path="bankruptcy" id="bankruptcy" checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="bankruptcy" id="bankruptcy" />
			</c:otherwise>

		</c:choose>
			Leave blank<br />
		<c:choose>
			<c:when test="${  user.bankruptcy == 'Yes'}">
				<form:radiobutton path="bankruptcy" id="bankruptcy0" value="Yes"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="bankruptcy" id="bankruptcy0" value="Yes" />
			</c:otherwise>
		</c:choose>
			Yes<br />
		<c:choose>
			<c:when test="${  user.bankruptcy == 'No'}">
				<form:radiobutton path="bankruptcy" id="bankruptcy1" value="No"
					checked="true" />
			</c:when>
			<c:otherwise>
				<form:radiobutton path="bankruptcy" id="bankruptcy1" value="No" />
			</c:otherwise>
		</c:choose>
			No<br />


		<input type=submit value="Save" />
	</form:form>

</body>
</html>