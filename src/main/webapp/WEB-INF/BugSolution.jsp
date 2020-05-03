<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
	<head>
	  	<title>Bug Solution</title>
  	</head>
	<body>
		<jsp:include page="links.jsp"/>
		<jsp:include page="header1.jsp" />
		<div class="register-photo">
			<div class="form-container">
				<form>
					<h2 class="text-center">BUG SOLUTION</h2>
					<form:form modelAttribute="bugSolution" action="sol/addSol" id="addSolution">
						<div class="form-group">
							<form:input class="form-control" path="bug_no" name="bug_no" id="bug_no" placeholder="Bug No"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="b_date" name="b_date" id="b_date" placeholder="Bug Date"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="e_code" name="e_code" id="e_code" placeholder="Employee Code"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="solution" name="solution" id="solution" placeholder="Solution"/>
						</div>
						<div class="form-group">
							<form:button class="btn btn-primary btn-block" id="submit" name="submit">Add Solution</form:button>
						</div>
					</form:form>
				</form>
			</div>
		</div>
		<jsp:include page="Footer.jsp" />
	</body>
</html>