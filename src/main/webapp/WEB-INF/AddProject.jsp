<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Add project</title>
	</head>
	<body>
		<jsp:include page="links.jsp"/>
		<jsp:include page="header1.jsp"/>
		<div class="register-photo">
			<div class="form-container">
				<form>
					<h2 class="text-center">ADD PROJECT</h2>
					<form:form action="pro/addPro" modelAttribute="proDetails" id="addProject">
						<div class="form-group">
							<form:input class="form-control" path="p_name" name="p_name" id="p_name" placeholder="Project Name"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="p_desc" name="p_desc" id="p_desc" placeholder="Project Description"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="s_date" name="s_date" id="s_date" placeholder="Submission Date"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="duration" name="duration" id="duration" placeholder="Duration"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="c_name" name="c_name" id="c_name" placeholder="Client Name"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="c_address" name="c_address" id="c_address" placeholder="Client Address"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="c_phno" name="c_phno" id="c_phno" placeholder="Ph No"/>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="c_email" name="c_email" id="c_email" placeholder="Email Id"/>
						</div>
						<div class="form-group">
							<form:select path="dept_name"  class="form-control">
								<form:option value="-- select--"/>
								<c:forEach items="${dept_name}" var="dept_name">
									<form:option value="${dept_name}">${dept_name}</form:option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<form:select path="p_lead" class="form-control">
								<form:option value="-- select--"/>
								<c:forEach items="${p_lead}" var="p_lead">
									<form:option value="${p_lead}">${p_lead}</form:option>
								</c:forEach>

							</form:select>
						</div>
						<div class="form-group">
							<form:button class="btn btn-primary btn-block" id="login" name="addProejct">Add Proejct</form:button>
						</div>
					</form:form>
				</form>
			</div>
		</div>
		<jsp:include page="Footer.jsp"/>
	</body>
</html>
