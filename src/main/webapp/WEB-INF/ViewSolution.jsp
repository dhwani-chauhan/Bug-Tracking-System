<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@page import="java.sql.*" %>
<html>
  <head>
    <title>All Solutions</title>

    <link rel="stylesheet" type="text/css" href="../../resources/static/css/styles.css">
  </head>
  <body bgcolor="">
  <jsp:include page="header1.jsp" />
<%--  <jsp:useBean id="bugSolution" class="com.BTS.BugTrackingSystem.Model.BugSolution" type="com.BTS.BugTrackingSystem.Model.BugSolution" scope="request" />--%>
	<form:form modelAttribute="bugSolution" action="viewSolution">
	<br>
	<center>
	<h4 align="center"><font color="red">
		</font></h4>
		<h3 align="center">All Solutions</h3>
		<table class=notebook align=center cellspacing="0" cellpadding="8" border="2px solid black">
			<tr>
				<th>Employee Code</th>
				<th>Solution</th>
				<th>Date</th>
			</tr>
			<c:forEach items="" var="solve">
				<tr>
					<td><form:label path="e_code" id="e_code" name="e_code"/></td>
					<td><form:label path="solution" id="solution" name="solution"/></td>
					<td><form:label path="b_date" id="b_date" name="b_date"/></td>

				</tr>
			</c:forEach>
		</table>
		</center>
	</form:form>

  	<jsp:include page="Footer.jsp" />
  </body>
</html>
