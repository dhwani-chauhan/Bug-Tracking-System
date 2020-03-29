<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head><center><h2>Bug Tracking System</h2></center></head>
    <a href="Home.jsp"><h5>HOME</h5></a>
    <body bgcolor="silver">
        <form:form action="">
        <center><h3>ADMINISTRATION</h3>
            <table>
                <tr>
                    <td>
                        <a href="Employeerequest.jsp"><h5>INBOX</h5></a></td></tr>
                <tr>
                    <td>
                        <a href="Status.html" ><h5>STATUS</h5></a></td></tr>
                <tr>
                    <td>
                        <a href="ListRequests.jsp"><h5>USER LIST</h5></a></td></tr>
            </table>
        </center>
        <center><br>
        <input type="submit" name="Logout" value="Logout">
        </center>
        </form:form>
    </body>
</html>