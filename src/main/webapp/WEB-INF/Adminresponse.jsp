<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<head>
		<link href="../../resources/static/css/styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<title>Adminresponse</title>
	</head>
<%--	<a href="Employee.jsp"><img border=0 src="Images2/CalLeft.gif"></a>--%>
	<body class="SC">
		<%--@elvariable id="AdminReponse" type=""--%>
		<form:form modelAttribute="AdminReponse" action="/response">//Method Post
			<h3 align=center>Adminresponse</h3>
			<br>
			<table class=notebook align=center>
				<tr class=row_title>
					<th align="center">Admin Id</th>
					<th align="center">Message</th>
					<th align="center">ReassignTo</th>
					<th align="center">NewStatus</th>
					<th align="center">Tested</th>
				<tr class= >
					<td><a href=""><jsp:setProperty name="" property=""/></a></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
			</table>
			<table align="right"><tr><td><input type="submit" name="logout" value="Logout"></td></tr>
		</form:form>
	</body>
</html>