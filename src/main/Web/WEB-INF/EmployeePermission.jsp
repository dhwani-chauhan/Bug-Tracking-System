
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<html>
    <head>
        <jsp:include flush="true" page="./Header.jsp"></jsp:include>
        <link href="styles.css" type="text/css" rel="stylesheet">
        <script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
        <title>Untitled Document</title>
        <script language="javascript">
            function SeekersDetails()
                {
                var a=document.form1.userid.value;

                alert(a);
                window.location.href="./Permission.jsp?msg="+a;
                System.out.println("msg3 "+request.getParameter("msg"));
                }
        </script>
        <script language="javascript">
            function check(fname)
                {
                window.open(fname);
                return false;
                }
        </script>
    </head>
    <body class="SC">
        <form name="form1" method="get" action="employeepermission">
            <h3 align=center><center>Employee Details</center></h3>
            //Employee details select
           <table class=notebook align=center>
                <tr class=row_title>
                    <th align="center">EmployeeName</th>
                    <th align="center">Gender</th>
                    <th align="center">Date Of Birth</th>
                    <th align="center">Qualification</th>
                    <th align="center">Address</th>
                    <th align="center">PhoneNo</th>
                    <th align="center">MobileNo</th>
                    <th align="center">EmailId</th>
                    <th align="center">Date Of Joining</th>
                    <th align="center">Role</th>
                    <th align="center">Delete</th>
                </tr>
                <tr>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                    <td align="center"><jsp:getProperty name="" property=""/></td>
                </tr>
           </table>
        </form>
    </body>
</html>