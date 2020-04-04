<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.sql.*" %>
<html lan="en">
  <head>
    <title>Login.html</title>
  	<jsp:include page="Header.jsp" />
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
    	   if(testerForm.bug_name.value=='')
    		{
    			window.alert("Bug Name is empty !");
    			return false;
    		}
    		if(testerForm.bug_type.value=='')
    		{
    			window.alert("Bug Type is empty !");
    			return false;
    		}
    		if(testerForm.bug_level.value=='')
    		{
    			window.alert("Bug Level is empty !");
    			return false;
    		}
    		if(testerForm.priority.value=='')
    		{
    			window.alert("Bug Priority is empty !");
    			return false;
    		}
    		
    		if(testerForm.tester_code.value=='')
    		{
    			window.alert("Tester code is empty !");
    			return false;
    		}
    		if(testerForm.bug_date.value=='')
    		{
    			window.alert("Bug Date is empty !");
    			return false;
    		}
    		if(testerForm.e_code.value=="select")
    		{
    			window.alert("Employee Code is empty !");
    			return false;
    		}
    		if(testerForm.status.value=="select")
    		{
    			window.alert("Select Status !");
    			return false;
    		}
       	}
    </script>
	<script LANGUAGE="Javascript" src="dateget.js"></script>
  </head>
  <body bgcolor="">
<%--	<jsp:useBean id="" class="com.BTS.BugTrackingSystem.Model.Admin" scope="request"></jsp:useBean>--%>
  <%--@elvariable id="AssignBug" type=""--%>
	<form:form modelAttribute="AssignBug" action="/assignbug">//Method Post
		<center>
		<h5 align="center"><font color="red"></font></h5>
		<h3><font color="#FBB117">&nbsp;&nbsp;&nbsp;&nbsp;Assign Bug</font></h3>
		<table border="0" cellpadding="2" >
			<tr>
				<td align="right"><font>Bug_Name</font></td>
				<td><input type="text" name="bug_name" value="<jsp:setProperty name="" property=""/>"></td></tr>
			<tr>
				<td align="right"><font>Bug_type</font></td>
				<td><input type="text" name="bug_type" value="<jsp:setProperty name="" property=""/>"></td></tr>
			<tr>
				<td align="right"><font>Bug_level</font></td>
				<td><input type="text" name="bug_level" value="<jsp:setProperty name="" property=""/>"></td></tr>
			<tr>
				<td align="right"><font>Priority</font></td>
				<td><input type="text" name="priority" value="<jsp:setProperty name="" property=""/>"></td></tr>
			<tr>
				<td align="right"><font>Project Name</font></td><td>
					<select name="pname">
						<option>//untill projects</option>
					</select>
			<tr>
				<td align="right"><font>Tester Code</font></td>
				<td> <input type="text" name="tester_code" value=<jsp:setProperty name="" property=""/> readonly></td></tr>
			<tr>
				<td align="right"><font>Bug Date</font></td>
				<td> <input type="text" name="bug_date">
					<a href="javascript:show_calendar('document.testerForm.bug_date', document.testerForm.bug_date.value);">date</a></td></tr>
			<tr>
				<td align="right"><font>Employee code</font></td><td>
					<select name="e_code">
						<option value="select">---select---</option>
							<option>//untill e_code</option>
					</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td></tr>
			<tr><td align="right"><font>Status</font></td><td>
				<select name="status">
					<option value="select">---select---</option>
					<option>open</option>
					<option>close</option>
				</select>
			</td></tr>
			<tr><td align="center" colspan="2"><input type="submit" value="submit"></td></tr>
		</table>
		</center>
  	</form:form>
   </body>
	<jsp:include page="Footer.jsp" />
</html>
