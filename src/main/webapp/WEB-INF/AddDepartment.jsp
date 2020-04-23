<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <link rel="stylesheet" href="css/Navigation-with-Button.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Add Department</title>

        <script LANGUAGE="Javascript" >
            function ChkMandatoryField(F,T){
                var val= F.value;
                if(val==""){alert(T+" is mandatory");return false;}
            }
            function validate()
            {
                if(ChkMandatoryField(login.dname,'DepartmentName')==false) return false;
                if(ChkMandatoryField(login.location,'Location')==false) return false;
            }
        </script>
    </head>
    <body bgcolor="silver">
    <jsp:include page="header1.jsp"/>

<%--        <jsp:useBean id="department" beanName="com.BTS.BugTrackingSystem.Model.Department" type="com.BTS.BugTrackingSystem.Model.Department"></jsp:useBean>--%>
        <form:form action="addDept" modelAttribute="department">
            <center>
            <h3>ADD DEPARTMENT</h3></center>
            <center>
            <table>
                <tr>
                    <td  align="left">&nbsp;Department Name:</td>
                    <td><form:input path="d_name" name="d_name" id="d_name" /></td>
                </tr>
                <tr>
                    <td align="left">Department Location:</td>
                    <td><form:input path="location" name="location" id="location" /></td>
                </tr>
                <tr>
                    <td><form:button id="submit"  name="add" value="AddDepartment" onClick="return validate()">Add Department</form:button></td>
                </tr>
            </table>
            </center>
        </form:form>
    </body>
    <jsp:include page="Footer.jsp" />
</html>