<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Assign Project</title>
  	<jsp:include page="Header.jsp" />
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
    		if(Assignproject.pname.value=="select")
    		{
    			window.alert("Select Project Name!");
    			return false;
    		}       	
    		if(Assignproject.e_code.value=="select")
    		{
    			window.alert("Select Employee Code!");
    			return false;
    		}    
    		if(Assignproject.role.value=='')
    		{
    			window.alert("role is Empty !");
    			return false;
    		}
		}
    </script>
  </head>
  <body bgcolor="">
<%--	<jsp:useBean id="assignProject" beanName="com.BTS.BugTrackingSystem.Model.AssignProject" type="com.BTS.BugTrackingSystem.Model.AssignProject" scope="request"  />--%>
	<form:form modelAttribute="assignProject" action="assignproject">
	   <p><font color="red"></font></p>
		<center>
		<h3><font color="#FBB117">&nbsp;&nbsp;&nbsp;&nbsp;Assign Project</font></h3>
		<table border="0" cellpadding="2">
			<tr>
				<td align="right"><font><b>Project Name</b></font></td>
				<td>
					<form:select path="pname">
						<c:forEach items="${pname}" var="pname">
                            <form:option value="${pname}">${pname}</form:option>
                        </c:forEach>
					</form:select>
			<tr>
				<td align="right"><font><b>Employee code</b></font></td>
				<td>
					<form:select path="e_code">
                        <c:forEach items="${e_code}" var="e_code">
                            <form:option value="${e_code}">${e_code}</form:option>
                        </c:forEach>
					</form:select>
                </td>
            </tr>
			<tr>
				<td align="right"><font><b>Role</b></font></td>
				<td> <form:input path="role" id="role" name="role" /></td></tr>
			<tr>
				<td align="center" colspan="2">
					<form:button id="submit" value="Assign Project" name="submit">Assign Project</form:button></td></tr>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp" />
</html>