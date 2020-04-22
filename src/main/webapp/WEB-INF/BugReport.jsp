<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<html>
  <head>
    <title>BugReport</title>
  	<jsp:include page="Header.jsp"></jsp:include>
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
			if(employeeForm.bug_type.value=='')
    		{
    			window.alert("Bug Type is Empty !");
    			return false;
    		}
    		if(employeeForm.bug_level.value=='')
    		{
    			window.alert("Bug Level is Empty !");
    			return false;
    		}
    		if(employeeForm.priority.value=='')
    		{
    			window.alert("Bug Priority is Empty !");
    			return false;
    		}
    		if(employeeForm.pname.value=='')
    		{
    			window.alert("Project name is Empty !");
    			return false;
    		}
    		if(employeeForm.tester_code.value=='')
    		{
    			window.alert("Tester code is Empty !");
    			return false;
    		}
    		if(employeeForm.bug_date.value=='')
    		{
    			window.alert("Bug Date is Empty !");
    			return false;
    		}
    		if(employeeForm.e_code.value=='')
    		{
    			window.alert("Employee Code is Empty !");
    			return false;
    		}       	
    		if(employeeForm.bug_rectified.value=='')
    		{
    			window.alert("BugRectified is Empty !");
    			return false;
    		}       	
    		if(employeeForm.status.value=='')
    		{
    			window.alert("Employee Status is Empty !");
    			return false;
    		}       	
}
    </script>
  </head>
  <body bgcolor="">
<%--  <jsp:useBean id="bugReport" beanName="com.BTS.BugTrackingSystem.Model.BugReport" type="com.BTS.BugTrackingSystem.Model.BugReport" scope="request" />--%>
	<form:form modelAttribute="bugReport" action="report">
		<center>
		<h3><font color="#FBB117">Bug Information</font></h3>
		<table border="0" cellpadding="2">
			<tr>
				<td align="right"><font ><b>Bug Type</b></font></td>
				<td><form:input path="bug_type" name="bug_type" id="bug_type"/></td></tr>
			<tr>
				<td align="right"><font ><b>Bug Level</b></font></td>
				<td><form:input path="bug_level" name="bug_level" id="bug_level" /></td></tr>
			<tr>
				<td align="right"><font><b>Priority</b></font></td>
				<td> <form:input path="priority" name="priority" id="priority" /></td></tr>
			<tr>
				<td align="right"><font ><b>Project Name</b></font> </td>
				<td><form:input path="pname" name="pname" id="pname" /></td></tr>
			<tr>
				<td align="right"><font ><b>Tester Code</b></font></td>
				<td><form:input path="tester_code" name="tester_code" id="tester_code" /></td></tr>
			<tr>
				<td align="right"><font ><b>Bug Date</b></font> </td>
				<td><form:input path="bug_date" name="bug_date" id="bug_date" />
<%--					<a href="javascript:show_calendar('document.testerForm.bug_date', document.testerForm.bug_date.value);">date</a></td></tr>--%>
			<tr>
				<td align="right"><font ><b>Employee code</b></font> </td>
				<td><form:input path="e_code" name="e_code" id="e_code" /></td></tr>
			<tr>
				<td align="right"><font ><b>Status</b></font></td>
			<td>
			<select name="status">
				<option value="select">---select---</option>
				<option>open</option>
				<option>close</option>
				<option>resolve</option>
				<option>completed</option>
			</select>
			</td></tr>
			<tr>
				<td align="right"><font><b>Bug Rectified date</b></font></td>
				<td> <form:input path="b_rectifiedDate" name="b_rectifiedDate" id="b_rectifiedDate" /></td></tr>
			<tr>
				<td align="center" colspan="2"><form:button id="submit" name="submit" value="Report Bug">Report Bug</form:button></td></tr>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp" />
</html>
