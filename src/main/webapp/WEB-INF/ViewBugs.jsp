<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>All Bugs</title>

    <link rel="stylesheet" type="text/css" href="../../resources/static/css/styles.css">
  </head>
  <body bgcolor="">
  <jsp:include page="header1.jsp" />
<%--  	<jsp:useBean id="bugReport" class="com.BTS.BugTrackingSystem.Model.BugReport" type="com.BTS.BugTrackingSystem.Model.BugReport" scope="request" />--%>
	<form:form modelAttribute="bugReport" action="viewbugs">
		<br>
		<center>
		<h4 align="center"><font color="red"></font></h4>
		<h3 align="center">All Bugs</h3>
		<table class=notebook align=center cellspacing="0" cellpadding="8" border="2px solid black">
			<tr>
				<th>Bug Name</th>
				<th>Bug Type</th>
				<th>Bug Level</th>
				<th>Priority</th>
				<th>Project Name</th>
				<th>Tester Code</th>
				<th>Bug Date</th>
				<th>Employee Code</th>
				<th>Status</th>
				<th>Update Bug Information</th>
				<th>View Solution</th>
			</tr>

			<c:forEach items="" var="solve">
				<tr>
					<td><form:label path="bug_name" id="bug_name" name="bug_name"/></td>
					<td><form:label path="bug_type" id="bug_type" name="bug_type"/></td>
					<td><form:label path="bug_level" id="bug_level" name="bug_level"/></td>
					<td><form:label path="priority" id="priority" name="priority"/></td>
					<td><form:label path="pname" id="pname" name="pname"/></td>
					<td><form:label path="tester_code" id="tester_code" name="tester_code"/></td>
					<td><form:label path="bug_date" id="bug_date" name="bug_date"/></td>
					<td><form:label path="e_code" id="e_code" name="e_code"/></td>
					<td><form:label path="status" id="status" name="status"/></td>
					<td><a href="./UpdateBug.jsp?bugid=<form:label path="bug_no" id="bug_no" name="bug_no"/>">Update</a></td>
					<td><a href="./ViewSolution.jsp?bugid=<form:label path="bug_no" id="bug_no" name="bug_no"/>">View Solution</a></td>
				</tr>
			</c:forEach>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp"/>
</html>
