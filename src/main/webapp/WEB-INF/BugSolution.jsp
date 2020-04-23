<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.sql.*" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Bug Solution</title>

    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
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
	<script LANGUAGE="Javascript" src="../../resources/static/js/dateget.js"></script>
  </head>
  <body bgcolor="">
  	<jsp:include page="header1.jsp" />

<%--	<jsp:useBean id="bugSolution" beanName="com.BTS.BugTrackingSystem.Model.BugSolution" type="com.BTS.BugTrackingSystem.Model.BugSolution"/>--%>
	<form:form modelAttribute="bugSolution" action="solution">
		<center>
		<h3>BUG SOLUTION</h3>
		<table border="0" cellpadding="2" >
			<tr>
				<td align="left"><font>Bug_No</font></td>
				<td><form:input path="bug_no" name="bug_no" id="bug_no" /></td></tr>
			<tr>
				<td align="left"><font>Bug Date</font></td>
                <td> <form:input path="b_date" name="b_date" id="b_date"/></td> </tr>
			<tr>
				<td align="left"><font>Employee code</font></td>
				<td> <form:input path="e_code" name="e_code" id="e_code"/></td></tr>

			<tr>
				<td align="left"><font>Solution</font></td><td>
				<form:textarea path="solution" id="solution" name="solution" cols="20" rows="3"/></td>
			</tr>
			<tr>
<%--				<td align="center" colspan="2"><form:hidden path="bug_no" name="bug_no" id="bug_no"/></td></tr>--%>
			<tr>
			<td align="center" colspan="2"><form:button id="submit" name="submit" value="Add Solution">Add Solution</form:button> </td></tr>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp" />
</html>