<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
  	<head>
	  	<title>Bug Report</title>
  	</head>
	<body>
		<jsp:include page="links.jsp"/>
		<jsp:include page="header1.jsp" />
		<div class="register-photo">
			<div class="form-container">
				<form>
					<h2 class="text-center">BUG REPORT</h2>
					<form:form modelAttribute="bugReport" action="rep/addRep" id="addReport">
					<div class="form-group">
						<form:input class="form-control" path="bug_name" name="bug_name" id="bug_name" placeholder="Bug Name"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="bug_type" name="bug_type" id="bug_type" placeholder="Bug Type"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="bug_level" name="bug_level" id="bug_level" placeholder="Bug Level"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="priority" name="priority" id="priority" placeholder="Priority"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="pname" name="pname" id="pname" placeholder="Project Name"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="tester_code" name="tester_code" id="tester_code" placeholder="Tester Code"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="bug_date" name="bug_date" id="bug_date" placeholder="Bug Date"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="e_code" name="e_code" id="e_code" placeholder="Employee Code"/>
					</div>
					<div class="form-group">
						<select name="status" class="form-control">
							<option>---select---</option>
							<option>open</option>
							<option>close</option>
							<option>resolve</option>
							<option>completed</option>
						</select>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="b_rectifiedDate" name="b_rectifiedDate" id="b_rectifiedDate" placeholder="Bug Rectified Date"/>
					</div>
					<div class="form-group">
						<form:button class="btn btn-primary btn-block" id="submit" name="submit">Report Bug</form:button>
					</div>
					</form:form>
				</form>
			</div>
		</div>
		<jsp:include page="Footer.jsp" />
  	</body>
</html>
