<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Employee Details</title>
    </head>
    <body>
        <jsp:include page="links.jsp"/>
        <jsp:include page="header1.jsp" />
        <div class="register-photo">
            <div class="form-container">
                <form>
                    <h2 class="text-center">Employee Details</h2>
                    <form:form modelAttribute="emp" action="emp/editProfile">
                        <div class="form-group">
                            <form:input class="form-control" path="u_name" name="u_name" id="u_name" placeholder="Employee Name" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="gender" name="gender" id="gender" placeholder="Gender" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="dob" name="dob" id="dob" placeholder="Date of Birth" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="qualification" name="qualification" id="qualification" placeholder="Qualification" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="address" name="address" id="address" placeholder="Address" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="ph_no" name="ph_no" id="ph_no" placeholder="Phone No" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="email" name="email" id="email" placeholder="Email Id" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="doj" name="doj" id="doj" placeholder="Date of Joining" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control" path="role" name="role" id="role" placeholder="Role" />
                        </div>
                        <div class="form-group">
                            <form:button class="btn btn-primary btn-block" id="edit" name="Save">SAVE</form:button>
                        </div>
                    </form:form>
                </form>
            </div>
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>