<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>New user profile</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

	<h1>User profile</h1>

	<p>You can skip this step and do it later.</p>

	<form:form action="saveprofile" method="post" modelAttribute="user">
		<p>Employment status</p>
			Full-time<form:radiobutton path="employment" value="Full-time" />
			Part-time<form:radiobutton path="employment" value="Part-time" />
			Homemaker<form:radiobutton path="employment" value="Homemaker" />
			Retired<form:radiobutton path="employment" value="Retired" />
			Student<form:radiobutton path="employment" value="Student" />
		<p>Time in current employment</p>
			Not in employment<form:radiobutton path="time"
			value="Not in employment" />
			Less than 1 year<form:radiobutton path="time"
			value="Less than 1 year" />
			1 to 3 years<form:radiobutton path="time" value="1 to 3 years" />
			3 to 10 years<form:radiobutton path="time" value="3 to 10 years" />
			More than 10 years<form:radiobutton path="time"
			value="More than 10 years" />
		<p>Residential status</p>
			Homeowner<form:radiobutton path="resident" value="Homeowner" />
			Renting<form:radiobutton path="resident" value="Renting" />
			Living with parents<form:radiobutton path="resident"
			value="Living with parents" />
		<p>Annual income</p>
		<form:input type="number" required="true" path="income" />
		<p>Mortgage status</p>
			Less than £40,000<form:radiobutton path="mortgage"
			value="Less than £40,000" />
			Between £40,000 and £60,000<form:radiobutton path="mortgage"
			value="Between £40,000 and £60,000" />
			Between £60,000 and £100,000<form:radiobutton path="mortgage"
			value="Between £60,000 and £100,000" />
			Between £100,000 and £150,000<form:radiobutton path="mortgage"
			value="Between £100,000 and £150,000" />
			Between £150,000 and £250,000<form:radiobutton path="mortgage"
			value="Between £150,000 and £250,000" />
			More than £250,000<form:radiobutton path="mortgage"
			value="More than £250,000" />
		<p>Credit cards</p>
		<form:input type="number" required="true" path="creditcards" />
		<p>Overdue credit agreements</p>
			0 days<form:radiobutton path="overdue" value="0 days" />
			Between 1 and 30 days<form:radiobutton path="overdue"
			value="Between 1 and 30 days" />
			Between 31 and 60 days<form:radiobutton path="overdue"
			value="Between 31 and 60 days" />
			More than 60<form:radiobutton path="overdue"
			value="More than 60 days" />
		<p>Bankrupt in last 5 years</p>
			Yes<form:radiobutton path="bankrupcy" value="Yes" />
			No<form:radiobutton path="bankrupcy" value="No" />
		<input type=submit value="Save" />
	</form:form>
	<a href="/userhome">Skip</a>
</body>
</html>