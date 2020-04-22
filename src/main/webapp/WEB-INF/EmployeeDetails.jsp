<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<html>
    <head>
        <jsp:include flush="true" page="Header.jsp"></jsp:include>
        <link href="styles.css" type="text/css" rel="stylesheet">
        <script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
        <title>Employee Details</title>
<%--        <script language="javascript">--%>
<%--            function SeekersDetails()--%>
<%--                {--%>
<%--                var a=document.form1.userid.value;--%>

<%--                alert(a);--%>
<%--                window.location.href="./Permission.jsp?msg="+a;--%>
<%--                System.out.println("msg3 "+request.getParameter("msg"));--%>
<%--                }--%>
<%--        </script>--%>
<%--        <script language="javascript">--%>
<%--            function check(fname)--%>
<%--                {--%>
<%--                window.open(fname);--%>
<%--                return false;--%>
<%--                }--%>
<%--        </script>--%>
    </head>
    <body class="SC">
<%--    <jsp:useBean id="developer" beanName="com.BTS.BugTrackingSystem.Model.Developer" type="com.BTS.BugTrackingSystem.Model.Developer"></jsp:useBean>--%>
        <form:form modelAttribute="developer" action="employee">
            <h3 align=center><center>Employee Details</center></h3>

           <table class=notebook align=center>
                <tr class=row_title>
                    <th align="center">EmployeeName</th>
                    <th align="center">Gender</th>
                    <th align="center">Date Of Birth</th>
                    <th align="center">Qualification</th>
                    <th align="center">Address</th>
                    <th align="center">MobileNo</th>
                    <th align="center">EmailId</th>
                    <th align="center">Date Of Joining</th>
                    <th align="center">Role</th>

                </tr>
                <tr>
                    <td align="center"><form:input path="username" name="u_name" id="u_name" /></td>
                    <td align="center"><form:input path="gender" name="gender" id="gender" /></td>
                    <td align="center"><form:input path="dob" name="dob" id="dob" /></td>
                    <td align="center"><form:input path="qualification" name="qualification" id="qualification" /></td>
                    <td align="center"><form:input path="address" name="address" id="address" /></td>
                    <td align="center"><form:input path="ph_no" name="ph_no" id="ph_no" /></td>
                    <td align="center"><form:input path="email" name="email" id="email" /></td>
                    <td align="center"><form:input path="doj" name="doj" id="doj" /></td>
                    <td align="center"><form:input path="role" name="role" id="role" /></td>

                </tr>
           </table>
        </form:form>
    </body>
</html>