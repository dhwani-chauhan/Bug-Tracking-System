<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.sql.*" %>
<html>
  <head>
    <title>Login.html</title>
  	<jsp:include page="Header.jsp" />
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
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
    		if(testerForm.pname.value=='')
    		{
    			window.alert("Project name is empty !");
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
  </head>
  <body bgcolor="">
<%--	  <jsp:useBean id="solution" class="com.BTS.BugTrackingSystem.Model.BugSolution" type="com.BTS.BugTrackingSystem.Model.BugSolution" scope="request"></jsp:useBean>--%>
<%--	  <jsp:useBean id="report" class="com.BTS.BugTrackingSystem.Model.BugReport"  type="com.BTS.BugTrackingSystem.Model.BugReport"scope="request"></jsp:useBean>--%>

	  <form:form modelAttribute="bugSolution" action="add">
		<center>
		<h3><font color="#FBB117" face="arial narrow">&nbsp;Bug Solution&nbsp;</font></h3>
		<table border="0" cellpadding="2" >
			<tr>
				<td align="right"><font>Bug Name</font></td>
				<td><form:input path="bug_name" name="bug_name" id="bug_name" /></td></tr>
			<tr>
				<td align="right"><font>Bug Type</font></td>
				<td><form:input path="bug_type" name="bug_type" id="bug_type" /></td></tr>
			<tr>
				<td align="right"><font>Bug Level</font></td>
				<td><form:input path="bug_level" name="bug_level" id="bug_level" /></td></tr>
			<tr>
				<td align="right"><font>Priority</font></td>
				<td><form:input path="priority" name="priority" id="priority" /></td></tr>
			<tr>
				<td align="right"><font>Project Name</font></td>
				<td><form:input path="pname" name="pname" id="pname" /></td></tr>
			<tr>
				<td align="right"><font>Tester Code</font></td>
				<td><form:input path="tester_code" name="tester_code" id="tester_code" /></td></tr>
			<tr>
				<td align="right"><font>Bug Date</font></td>
				<td> <form:input path="b_date" name="b_date" id="b_date" /></td></tr>
			<tr>
				<td align="right"><font>Employee code</font></td>
				<td><form:input path="e_code" name="e_code" id="e_code" /></td></tr>
			<tr>
				<td align="right"><font>Tester Status</font></td>
				<td><form:input path="status" name="status" id="status" /></td></tr>
			<tr>
				<td align="right"><font>Posted Date</font></td>
				<td> <input type="text" name="pdate" />
					<a href="javascript:show_calendar('document.testerForm.pdate', document.testerForm.pdate.value);">date</a>
				</td></tr>
			<tr>
				<td align="right"><font>Solution</font></td>
				<td><textarea name="solution" rows=3 cols=16 path=""solution></textarea>
				</td></tr>
			<tr>
				<td align="center" colspan="2"><form:input type="hidden" path="bug_no" name="bug_no" id="bug_no" /></td></tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="Add Solution"></td></tr>
		</table>
		</center>
	  </form:form>
  </body>
  <jsp:include page="Footer.jsp" />
</html>

