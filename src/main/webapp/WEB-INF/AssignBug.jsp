<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
	  <title>Assign Bug</title>
  </head>
  <body>
  	<jsp:include page="links.jsp"/>
  	<jsp:include page="header1.jsp" />
	<div class="register-photo">
		<div class="form-container">
			<form>
				<h2 class="text-center">Assign Bug</h2>
				<form:form modelAttribute="assignBug" action="assignBug" id="assignBug">
					<div class="form-group">
						<form:input class="form-control" path="bug_name" name="bug_name" id="bug_name" placeholder="Bug Name"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="bug_type" name="bug_type" id="bug_type" placeholder="Bug Type"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="bug_level" name="bug_level" id="bug_level" placeholdeer="Bug Level"/>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="priority" name="priority" id="priority" placeholder="Priority"/>
					</div>
					<div class="form-group">
						<form:select path="pname" class="form-control">
							<c:forEach items="${pName}" var="pName">
								<form:option value="${pName}">${pName}</form:option>
							</c:forEach>
						</form:select>
					</div>
					<div class="form-group">
						<form:input class="form-control" path="tester_code" name="tester_code" id="tester_code" placeholder="Tester Code" />
					</div>
					<div class="form-group">
						<form:input class="form-control" path="b_date" name="b_date" id="b_date" placeholder="Bug Date"/>
					</div>
					<div class="form-group">
						<form:select path="e_code" class="form-control">
							<c:forEach items="${eCode}" var="eCode">
								<form:option value="${eCode}">${eCode}</form:option>
							</c:forEach>
						</form:select>
					</div>
					<div class="form-group">
						<form:select path="status" class="form-control" >
							<form:option value="--Select--"/>
							<form:option value="Open"/>
							<form:option value="Close"/>
						</form:select>
					</div>
					<div class="form-group">
						<form:button class="btn btn-primary btn-block" id="submit" name="assignBug">Assign Bug</form:button>
					</div>
				</form:form>
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
   </body>
</html>
