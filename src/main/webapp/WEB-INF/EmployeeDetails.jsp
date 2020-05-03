<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Employee Details</title>
    </head>
    <body>
        <jsp:include page="links.jsp"/>
        <jsp:include page="header1.jsp" />
        <h3 align=center><center>Employee Details</center></h3>
        <table class=notebook align=center cellspacing="0" cellpadding="8" border="2px solid black">
            <tr class=row_title>
                <th align="center">Employee Name</th>
                <th align="center">Gender</th>
                <th align="center">Date Of Birth</th>
                <th align="center">Qualification</th>
                <th align="center">Address</th>
                <th align="center">Mobile No</th>
                <th align="center">EmailId</th>
                <th align="center">Date Of Joining</th>
                <th align="center">Role</th>
            </tr>
            <c:forEach items="emp" var="emp">
                <tr>
                    <td align="center"><form:input path="${emp.u_name}" name="u_name" id="u_name" /></td>
                    <td align="center"><form:input path="${emp.gender}" name="gender" id="gender" /></td>
                    <td align="center"><form:input path="${emp.dob}" name="dob" id="dob" /></td>
                    <td align="center"><form:input path="${emp.qualification}" name="qualification" id="qualification" /></td>
                    <td align="center"><form:input path="${emp.address}" name="address" id="address" /></td>
                    <td align="center"><form:input path="${emp.ph_no}" name="ph_no" id="ph_no" /></td>
                    <td align="center"><form:input path="${emp.email}" name="email" id="email" /></td>
                    <td align="center"><form:input path="${emp.doj}" name="doj" id="doj" /></td>
                    <td align="center"><form:input path="${emp.role}" name="role" id="role" /></td>
                </tr>
            </c:forEach>
        </table>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>