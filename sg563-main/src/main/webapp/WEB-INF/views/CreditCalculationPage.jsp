<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Calculate score</title>
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
				<li class="nav-item"><a class="nav-link" href="/settings">Settings</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout"
					onclick="return confirm('Log out of your account?');">Log out</a></li>
			</ul>
		</div>
	</nav>
	<div class="container mt-3">
		<h1>Calculate score</h1>

		<form:form action="results" method="post" modelAttribute="score">
			<p>Enter the amount you'd like to borrow:</p>
			<form:input type="number" required="true" name="loanamount"
				path="loan" min="100"/>
			<br />
			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.employment == null }">
				<p>What is your current employment status?</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.employment == 'Full-time'}">
						<form:radiobutton path="employment" id="employment0"
							value="Full-time" checked="true" required="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="employment" id="employment0"
							value="Full-time" required="true" />
					</c:otherwise>
				</c:choose>
			<label>Full-time</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.employment == 'Part-time'}">
						<form:radiobutton path="employment" id="employment1"
							value="Part-time" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="employment" id="employment1"
							value="Part-time" />
					</c:otherwise>
				</c:choose>
			<label>Part-time</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.employment == 'Homemaker'}">
						<form:radiobutton path="employment" id="employment2"
							value="Homemaker" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="employment" id="employment2"
							value="Homemaker" />
					</c:otherwise>
				</c:choose>
			<label>Homemaker</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.employment == 'Retired'}">
						<form:radiobutton path="employment" id="employment3"
							value="Retired" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="employment" id="employment3"
							value="Retired" />
					</c:otherwise>
				</c:choose>		
			<label>Retired</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.employment == 'Student'}">
						<form:radiobutton path="employment" id="employment4"
							value="Student" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="employment" id="employment4"
							value="Student" />
					</c:otherwise>
				</c:choose>		
			<label>Student</label><br />
			</c:if>

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.time == null }">
				<p>How long have you been in your current employment?</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.time == 'Not in employment'}">
						<form:radiobutton path="time" id="time0" value="Not in employment"
							checked="true" required="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="time" id="time0" value="Not in employment"
							required="true" />
					</c:otherwise>
				</c:choose>
			<label>Not in employment</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.time == 'Less than 1 year'}">
						<form:radiobutton path="time" id="time1" value="Less than 1 year"
							checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="time" id="time1" value="Less than 1 year" />
					</c:otherwise>
				</c:choose>
			<label>Less than 1 year</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.time == '1 to 3 years'}">
						<form:radiobutton path="time" id="time2" value="1 to 3 years"
							checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="time" id="time2" value="1 to 3 years" />
					</c:otherwise>
				</c:choose>
			<label>1 to 3 years</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.time == '3 to 10 years'}">
						<form:radiobutton path="time" id="time3" value="3 to 10 years"
							checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="time" id="time3" value="3 to 10 years" />
					</c:otherwise>
				</c:choose>
			<label>3 to 10 years</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.time == 'More than 10 years'}">
						<form:radiobutton path="time" id="time4"
							value="More than 10 years" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="time" id="time4"
							value="More than 10 years" />
					</c:otherwise>
				</c:choose>
			<label>More than 10 years</label><br />
			</c:if>

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.resident == null }">
				<p>What is your residential status?</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.resident == 'Homeowner'}">
						<form:radiobutton path="resident" id="resident0" value="Homeowner"
							checked="true" required="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="resident" id="resident0" value="Homeowner"
							required="true" />
					</c:otherwise>
				</c:choose>
			<label>Homeowner</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.resident == 'Renting'}">
						<form:radiobutton path="resident" id="resident1" value="Renting"
							checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="resident" id="resident1" value="Renting" />
					</c:otherwise>
				</c:choose>
			<label>Renting</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.resident == 'Living with parents'}">
						<form:radiobutton path="resident" id="resident2"
							value="Living with parents" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="resident" id="resident2"
							value="Living with parents" />
					</c:otherwise>
				</c:choose>
			<label>Living with parents</label><br />
			</c:if>

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

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.mortgage == null }">
				<p>What is the remaining balance on your mortgage?</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Less than ?40,000'}">
						<form:radiobutton path="mortgage" id="mortgage0"
							value="Less than ?40,000" checked="true" required="true" />
			<label>Less than ?40,000</label><br />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage0"
							value="Less than ?40,000" required="true" />
			<label>Less than ?40,000</label><br />
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Between ?40,000 and ?60,000'}">
						<form:radiobutton path="mortgage" id="mortgage1"
							value="Between ?40,000 and ?60,000" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage1"
							value="Between ?40,000 and ?60,000" />
					</c:otherwise>
				</c:choose>
			<label>Between ?40,000 and ?60,000</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Between ?60,000 and ?100,000'}">
						<form:radiobutton path="mortgage" id="mortgage2"
							value="Between ?60,000 and ?100,000" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage2"
							value="Between ?60,000 and ?100,000" />
					</c:otherwise>
				</c:choose>
			<label>Between ?60,000 and ?100,000</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Between ?100,000 and ?150,000'}">
						<form:radiobutton path="mortgage" id="mortgage3"
							value="Between ?100,000 and ?150,000" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage3"
							value="Between ?100,000 and ?150,000" />
					</c:otherwise>
				</c:choose>
			<label>Between ?100,000 and ?150,000</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Between ?150,000 and ?250,000'}">
						<form:radiobutton path="mortgage" id="mortgage4"
							value="Between ?150,000 and ?250,000" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage4"
							value="Between ?150,000 and ?250,000" />
					</c:otherwise>
				</c:choose>
			<label>Between ?150,000 and ?250,000</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'More than ?250,000'}">
						<form:radiobutton path="mortgage" id="mortgage5"
							value="More than ?250,000" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage5"
							value="More than ?250,000" />
					</c:otherwise>
				</c:choose>
			<label>More than ?250,000</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.mortgage == 'Not a home owner'}">
						<form:radiobutton path="mortgage" id="mortgage6"
							value="Not a home owner" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="mortgage" id="mortgage6"
							value="Not a home owner" />
					</c:otherwise>
				</c:choose>
			<label>Not a home owner</label><br />
			</c:if>

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.creditcards == 0 }">
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

			</c:if>

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.overdue == null }">
				<p>Overdue credit agreements</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.overdue == '0 days'}">
						<form:radiobutton path="overdue" id="overdue0" value="0 days"
							checked="true" required="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="overdue" id="overdue0" value="0 days"
							required="true" />
					</c:otherwise>
				</c:choose>
			<label>0 days</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.overdue == 'Between 1 and 30 days'}">
						<form:radiobutton path="overdue" id="overdue1"
							value="Between 1 and 30 days" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="overdue" id="overdue1"
							value="Between 1 and 30 days" />
					</c:otherwise>
				</c:choose>
			<label>Between 1 and 30 days</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.overdue == 'Between 31 and 60 days'}">
						<form:radiobutton path="overdue" id="overdue2"
							value="Between 31 and 60 days" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="overdue" id="overdue2"
							value="Between 31 and 60 days" />
					</c:otherwise>
				</c:choose>
			<label>Between 31 and 60 days</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.overdue == 'More than 60 days'}">
						<form:radiobutton path="overdue" id="overdue3"
							value="More than 60 days" checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="overdue" id="overdue3"
							value="More than 60 days" />
					</c:otherwise>
				</c:choose>
			<label>More than 60 days</label><br />
			</c:if>

			<c:if
				test="${ (user.defaults == 'Use profile, and show all options' || user.defaults == 'Do not use profile') || user.bankruptcy == null }">
				<p>Have you declared bankruptcy in the last 5 years?</p>
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.bankruptcy == 'Yes'}">
						<form:radiobutton path="bankruptcy" id="bankruptcy0" value="Yes"
							checked="true" required="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="bankruptcy" id="bankruptcy0" value="Yes"
							required="true" />
					</c:otherwise>
				</c:choose>
			<label>Yes</label><br />
				<c:choose>
					<c:when
						test="${ user.defaults == 'Use profile, and show all options' && user.bankruptcy == 'No'}">
						<form:radiobutton path="bankruptcy" id="bankruptcy1" value="No"
							checked="true" />
					</c:when>
					<c:otherwise>
						<form:radiobutton path="bankruptcy" id="bankruptcy1" value="No" />
					</c:otherwise>
				</c:choose>
			<label>No</label><br />
			</c:if>

			<br />
			<button class="btn btn-primary" type=submit> Calculate </button>
		</form:form>
	</div>
</body>
</html>