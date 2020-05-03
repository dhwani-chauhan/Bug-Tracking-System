<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  	<head>
	  	<title>Assign Project</title>
  	</head>
  	<body>
		<jsp:include page="links.jsp"/>
		<jsp:include page="header1.jsp" />
		<div class="register-photo">
			<div class="form-container">
				<form>
					<h2 class="text-center">Assign Project</h2>
					<form:form modelAttribute="assignProject" action="assignPro" id="assignProject">
						<div class="form-group">
							<form:select path="p_name" class="form-control">
								<c:forEach items="${pName}" var="pName">
									<form:option value="${pName}">${pName}</form:option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<form:select path="e_code" class="form-control">
								<c:forEach items="${eCode}" var="eCode">
									<form:option value="${eCode}">${eCode}</form:option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<form:input class="form-control" path="role" name="role" id="role" placeholder="Role"/>
						</div>
						<div class="form-group">
							<form:button class="btn btn-primary btn-block" id="submit" name="submit">Assign Project</form:button>
						</div>
					</form:form>
				</form>
			</div>
		</div>
		<jsp:include page="Footer.jsp" />
  	</body>
</html>