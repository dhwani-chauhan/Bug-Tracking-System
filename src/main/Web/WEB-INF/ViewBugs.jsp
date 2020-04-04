<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Login.html</title>
  	<jsp:include page="Header.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="./styles.css">
  </head>
  <body bgcolor="">
  	<jsp:useBean id="bugs" class="com.BTS.BugTrackingSystem.Model.BugReport" scope="request" />
	<form:form modelAttribute="BugReport" action="/viewbugs">
		<br>
		<center>
		<h4 align="center"><font color="red"></font></h4>
		<h3><font color="#FBB117" face="arial narrow">&nbsp;&nbsp;&nbsp;&nbsp;View All Bugs</font></h3>
		<table border="1" cellpadding="2" cellspacing="0" bordercolor="orange">
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
					<td><jsp:getProperty name="bugs" property="bug_name"/></td>
					<td><jsp:getProperty name="bugs" property="bug_type"/></td>
					<td><jsp:getProperty name="bugs" property="bug_level"/></td>
					<td><jsp:getProperty name="bugs" property="priority"/></td>
					<td><jsp:getProperty name="bugs" property="p_name"/></td>
					<td><jsp:getProperty name="bugs" property="tester_code"/></td>
					<td><jsp:getProperty name="bugs" property="bug_date"/></td>
					<td><jsp:getProperty name="bugs" property="e_code"/></td>
					<td><jsp:getProperty name="bugs" property="status"/></td>
					<td><a href="./UpdateBug.jsp?bugid=<jsp:getProperty name="bugs" property="bug_no"/>">Update</a></td>
					<td><a href="./ViewSolution.jsp?bugid=<jsp:getProperty name="bugs" property="bug_no"/>">View</a></td>
				</tr>
			</c:forEach>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="Footer.jsp"/>
</html>
