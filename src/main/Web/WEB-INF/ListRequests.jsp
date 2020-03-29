<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page session="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<head>

		<link href="styles.css" type="text/css" rel="stylesheet">
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<title>List Requests</title>

	</head>
	<body class="SC">
		<form:form modelAttribute="" action="/list">
		<h3 align=center>Employee List</h3>
			<br>
			<table class=notebook align=center>
			<tr class=row_title>
				<th align="center">username</th>
				<th align="center">userid</th>
				<th align="center">email</th>
				<th align="center">address</th>
				<th align="center">phno</th>
				<th align="center">status</th>
			</tr>
			<c:forEach items="" var="request">
				<tr>
					<td><a href=""><jsp:getProperty name="" property=""/></a></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
				</tr>
			</c:forEach>
		</table>
		<table align="right">
			<tr>
				<td><input type="submit" name="logout" value="Logout"></td>
			</tr>
		</table>
		</form:form>
	</body>
</html>