<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<html>
  <head>
    <title>Login.html</title>
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
  <jsp:useBean id="bugs" class="com.BTS.BugTrackingSystem.Model.BugReport" scope="request" />
<%--@elvariable id="BugReport" type=""--%>
	<form:form modelAttribute="BugReport" action="/report">
		<center>
		<h3><font color="#FBB117">Bug Information</font></h3>
		<table border="0" cellpadding="2">
			<tr>
				<td align="right"><font ><b>Bug Type</b></font></td>
				<td> <input type="text" name="bug_type" value="<jsp:setProperty name="bugs" property="bug_type"/>"></td></tr>
			<tr>
				<td align="right"><font ><b>Bug Level</b></font></td>
				<td> <input type="text" name="bug_level" value="<jsp:setProperty name="bugs" property="bug_level"/>"></td></tr>
			<tr>
				<td align="right"><font><b>Priority</b></font></td>
				<td> <input type="text" name="priority" value="<jsp:setProperty name="bugs" property="priority"/>"></td></tr>
			<tr>
				<td align="right"><font ><b>Project Name</b></font> </td>
				<td><input type="text" name="pname" value="<jsp:setProperty name="bugs" property="p_name"/>"></td></tr>
			<tr>
				<td align="right"><font ><b>Tester Code</b></font></td>
				<td> <input type="text" name="tester_code" value="<jsp:setProperty name="bugs" property="tester_code"/>"></td></tr>
			<tr>
				<td align="right"><font ><b>Bug Date</b></font> </td>
				<td><input type="text" name="bug_date" value="<jsp:setProperty name="bugs" property="bug_date"/>"></td></tr>
			<tr>
				<td align="right"><font ><b>Employee code</b></font> </td>
				<td><input type="text" name="e_code" value="<jsp:setProperty name="bugs" property="e_code"/>"></td></tr>
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
				<td> <input type="text" name="bug_rectifed" value="<jsp:setProperty name="bugs" property="b_rectifiedDate"/>"></td></tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="submit"></td></tr>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp" />
</html>
