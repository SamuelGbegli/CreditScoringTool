<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>New user profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<h3>Do you want to set up a profile?</h3>

	<p>You can skip this and do it later in the settings menu.</p>

	<a href="/userhome">Skip</a>
	<form:form action="savenewprofile" method="post"
		modelAttribute="profile">

		<div>
			<p>What is your current employment status?</p>
			<form:radiobutton path="employment" id="employment" />
			Full-time<br />
			<form:radiobutton path="employment" value="Part-time" />
			Part-time<br />
			<form:radiobutton path="employment" value="Homemaker" />
			Homemaker<br />
			<form:radiobutton path="employment" value="Retired" />
			Retired<br />
			<form:radiobutton path="employment" value="Student" />
			Student<br />
			<form:errors path="employment" />
		</div>

		<div>
			<form:errors path="time" />
			<p>How long have you been in your current employment?</p>
			<form:radiobutton path="time" value="Not in employment" />
			Not in employment<br />
			<form:radiobutton path="time" value="Less than 1 year" />
			Less than 1 year<br />
			<form:radiobutton path="time" value="1 to 3 years" />
			1 to 3 years<br />
			<form:radiobutton path="time" value="3 to 10 years" />
			3 to 10 years<br />
			<form:radiobutton path="time" value="More than 10 years" />
			More than 10 years<br />
		</div>

		<div>
			<form:errors path="resident" />
			<p>What is your residential status?</p>
			<form:radiobutton path="resident" value="Homeowner" />
			Homeowner<br />
			<form:radiobutton path="resident" value="Renting" />
			Renting<br />
			<form:radiobutton path="resident" value="Living with parents" />
			Living with parents<br />
		</div>

		<div>
			<p>What is your annual income?</p>
			<form:input type="number" required="true" path="income" />
		</div>

		<div>
			<form:errors path="mortgage" />
			<p>What is the remaining balance on your mortgage?</p>
			<form:radiobutton path="mortgage" value="Less than £40,000" />
			Less than £40,000<br />
			<form:radiobutton path="mortgage" value="Between £40,000 and £60,000" />
			Between £40,000 and £60,000<br />
			<form:radiobutton path="mortgage"
				value="Between £60,000 and £100,000" />
			Between £60,000 and £100,000<br />
			<form:radiobutton path="mortgage"
				value="Between £100,000 and £150,000" />
			Between £100,000 and £150,000<br />
			<form:radiobutton path="mortgage"
				value="Between £150,000 and £250,000" />
			Between £150,000 and £250,000<br />
			<form:radiobutton path="mortgage" value="More than £250,000" />
			More than £250,000<br />
			<form:radiobutton path="mortgage" value="Not a home owner" />
			Not a home owner<br />
		</div>

		<div>
			<p>How many credit cards do you have?</p>
			<form:input type="number" required="true" path="creditcards" />
		</div>

		<div>
			<form:errors path="overdue" />
			<p>Overdue credit agreements</p>
			<form:radiobutton path="overdue" value="0 days" />
			0 days<br />
			<form:radiobutton path="overdue" value="Between 1 and 30 days" />
			Between 1 and 30 days<br />
			<form:radiobutton path="overdue" value="Between 31 and 60 days" />
			Between 31 and 60 days<br />
			<form:radiobutton path="overdue" value="More than 60 days" />
			More than 60 days<br />
		</div>

		<div>
			<form:errors path="bankruptcy" />
			<p>Have you declared bankruptcy in the last 5 years?</p>
			<form:radiobutton path="bankruptcy" value="Yes" />
			Yes<br />
			<form:radiobutton path="bankruptcy" value="No" />
			No<br />
		</div>
		<br />

		<input type=submit value="Save" />
	</form:form>
</body>
</html>