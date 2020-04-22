<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*" %>
<html>
  <head>
    <title>Assign Bug</title>
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
<%--	<jsp:useBean id="assignBug" class="com.BTS.BugTrackingSystem.Model.AdminClass"  type ="com.BTS.BugTrackingSystem.Model.AdminClass" scope="request"></jsp:useBean>--%>
	<form:form modelAttribute="assignBug" action="assignbug">
		<center>
		<h5 align="center"><font color="red"></font></h5>
		<h3><font color="#FBB117">Assign Bug</font></h3>
		<table border="0" cellpadding="2" >
			<tr>
				<td align="right"><font>Bug_Name</font></td>
				<td><form:input path="bug_name" name="bug_name" id="bug_name"/></td></tr>
			<tr>
				<td align="right"><font>Bug_type</font></td>
				<td><form:input path="bug_type" name="bug_type" id="bug_type"/></td></tr>
			<tr>
				<td align="right"><font>Bug_level</font></td>
				<td><form:input path="bug_level" name="bug_level" id="bug_level" /></td></tr>
			<tr>
				<td align="right"><font>Priority</font></td>
				<td><form:input path="priority" name="priority" id="priority" /></td></tr>
			<tr>
				<td align="right"><font>Project Name</font></td>
				<td>
					<form:select path="pname">
						<c:forEach items="${pname}" var="pname">
							<form:option value="${pname}">${pname}</form:option>
						</c:forEach>
					</form:select>
			<tr>
				<td align="right"><font>Tester Code</font></td>
				<td> <form:input path="tester_code" name="tester_code" id="tester_code" /></td></tr>
			<tr>
				<td align="right"><font>Bug Date</font></td>
				<td> <form:input path="b_date" name="b_date" id="b_date" />
					<a href="javascript:show_calendar('document.testerForm.bug_date', document.testerForm.bug_date.value);">date</a></td></tr>
			<tr>
				<td align="right"><font>Employee code</font></td>
				<td>
					<form:select path="e_code">
						<c:forEach items="${e_code}" var="e_code">
							<form:option value="${e_code}">${e_code}</form:option>
						</c:forEach>
					</form:select>
				</td>
			</tr>
			<tr><td align="right"><font>Status</font></td><td>
				<form:select path="status">
                    <form:option value="--Select--"/>
                    <form:option value="Open"/>
                    <form:option value="Close"/>
				</form:select>

			</td></tr>
			<tr><td align="center" colspan="2"><form:button id="submit" value="Assign Bug" name="submit">Assign Bug</form:button></td></tr>
		</table>
		</center>
  	</form:form>
   </body>
	<jsp:include page="Footer.jsp" />
</html>
