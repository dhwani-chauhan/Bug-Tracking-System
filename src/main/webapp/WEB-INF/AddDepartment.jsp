<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Add Department</title>
    </head>
    <body>
        <jsp:include page="links.jsp"/>
        <jsp:include page="header1.jsp"/>
        <div class="register-photo">
            <div class="form-container">
                <form>
                    <h2 class="text-center">ADD DEPARTMENT</h2>
                    <form:form action="dept/addDept" modelAttribute="department" id="addDept">
                        <div class="form-group">
                            <form:input class="form-control" path="d_name" name="d_name" id="d_name" placeholder="Department Name" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="location" name="location" id="location" placeholder="Location"/>
                        </div>
                        <div class="form-group">
                            <form:button class="btn btn-primary btn-block" id="login" name="addDepartment">Add Department</form:button>
                        </div>
                    </form:form>
                </form>
            </div>
        </div>
        <jsp:include page="Footer.jsp" />
    </body>
</html>