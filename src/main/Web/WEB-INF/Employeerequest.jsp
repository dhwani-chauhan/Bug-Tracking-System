<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<head>
		<link href="styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<title>Employeerequest</title>

	</head>
	<body class="SC">
		<a href="Administration.jsp"><img border=0 src="Images2/CalLeft.gif"></a>
		<form:form modelAttribute="" action="">
			<h3 align=center>Employeerequest</h3>
			<br>
			<table class=notebook align=center>
				<tr class=row_title>
					<th align="center">f1</th>
					<th align="center">to</th>
					<th align="center">from</th>
					<th align="center">subject</th>
					<th align="center">message</th>
					<th align="center">tested</th>
				<tr>
					<td><a href=""><jsp:getProperty name="" property=""/></a></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>

<%--						<tr><th colspan=6>No Records found</th></tr>--%>

			</table>
			<table align="right"><tr><td><input type="submit" name="logout" value="Logout"></td></tr>
		</form:form>
	</body>
</html>