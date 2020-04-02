<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head><center><h3>BUG TRACKING SYSTEM</h3></center></head>
    <body bgcolor="silver"><br>
        <form:form action="">
        <center>
            <h4>EMPLOYEE</h4>
            <table>
                <tr>
                    <td><a href="Home.jsp"><h5>HOME</h5></a></td></tr>
                <tr>
                    <td><a href="Adminresponse.jsp"><h5>INBOX</h5></a></td></tr>
            </table>
            <%--<tr><td><a href="Employeerequest.html"><h5>COMPOSE MAIL</h5></a></td></tr>--%>
            <%--<tr><td><a href="Status.html"><h5>STATUS</h5></a></td></tr>--%>
            </center>
            <br>
            <center>
            <input type="submit" name="Logout" value="Logout"></center>
        </form:form>
    </body>
</html>