<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>Add Department</title>
        <jsp:include page="Header.jsp"></jsp:include>
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
<%--        <jsp:useBean id="department" beanName="com.BTS.BugTrackingSystem.Model.Department" type="com.BTS.BugTrackingSystem.Model.Department"></jsp:useBean>--%>
        <form:form action="addDept" modelAttribute="department">
            <center>
            <h3>ADD DEPARTMENT</h3></center>
            <center>
            <table>
                <tr>
                    <td>&nbsp;Department Name:</td>
                    <td><form:input path="d_name" name="d_name" id="d_name" /></td>
                </tr>
                <tr>
                    <td>Department Location:</td>
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