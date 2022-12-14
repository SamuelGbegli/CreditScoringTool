<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Demo calculation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<span class="navbar-brand">CreditCalculator</span>
			<ul class="navbar-nav">
				<li class="nav-item"><span class="nav-link">${user.name}</span></li>
				<li class="nav-item"><a class="nav-link" href="/demo">Try
						it out</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">Register</a>
					<li class="nav-item"><a class="nav-link" href="/login-page">Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container pt-3">
	<h1>Calculate score</h1>

	<form:form name="calculator" action="demoresults" method="post"
		modelAttribute="score">
		<p>Enter the amount you'd like to borrow:</p>
		<form:input type="number" required="true" name="loanamount"
			path="loan" min="100" />
		<br />
		<div>
			<p id="employment"></p>
			<p>What is your current employment status?</p>
			<form:radiobutton path="employment" value="Full-time" required="true" />
			Full-time<br />
			<form:radiobutton path="employment" value="Part-time" />
			Part-time<br />
			<form:radiobutton path="employment" value="Homemaker" />
			Homemaker<br />
			<form:radiobutton path="employment" value="Retired" />
			Retired<br />
			<form:radiobutton path="employment" value="Student" />
			Student<br />
		</div>

		<div>
			<p>How long have you been in your current employment?</p>
			<form:radiobutton path="time" value="Not in employment"
				required="true" />
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
			<p>What is your residential status?</p>
			<form:radiobutton path="resident" value="Homeowner" required="true" />
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
			<p>What is the remaining balance on your mortgage?</p>
			<form:radiobutton path="mortgage" value="Less than ?40,000"
				required="true" />
			Less than ?40,000<br />
			<form:radiobutton path="mortgage" value="Between ?40,000 and ?60,000" />
			Between ?40,000 and ?60,000<br />
			<form:radiobutton path="mortgage"
				value="Between ?60,000 and ?100,000" />
			Between ?60,000 and ?100,000<br />
			<form:radiobutton path="mortgage"
				value="Between ?100,000 and ?150,000" />
			Between ?100,000 and ?150,000<br />
			<form:radiobutton path="mortgage"
				value="Between ?150,000 and ?250,000" />
			Between ?150,000 and ?250,000<br />
			<form:radiobutton path="mortgage" value="More than ?250,000" />
			More than ?250,000<br />
			<form:radiobutton path="mortgage" value="Not a home owner" />
			Not a home owner<br />
		</div>

		<div>
			<p>How many credit cards do you have?</p>
			<form:input type="number" required="true" path="creditcards" />
		</div>

		<div>
			<p>Overdue credit agreements</p>
			<form:radiobutton path="overdue" value="0 days" required="true" />
			0 days<br />
			<form:radiobutton path="overdue" value="Between 1 and 30 days" />
			Between 1 and 30 days<br />
			<form:radiobutton path="overdue" value="Between 31 and 60 days" />
			Between 31 and 60 days<br />
			<form:radiobutton path="overdue" value="More than 60 days" />
			More than 60 days<br />
		</div>

		<div>
			<p>Have you declared bankruptcy in the last 5 years?</p>
			<form:radiobutton path="bankruptcy" value="Yes"  required="true"/>
			Yes<br />
			<form:radiobutton path="bankruptcy" value="No" />
			No<br />
		</div>
		<br />
		<button class="btn btn-primary" type=submit> Calculate </button>
	</form:form>
</div>
</body>
</html>