<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@page import="java.sql.*" %>
<html>
  <head>
    <title>Login.html</title>
  	<jsp:include page="./Header.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="./styles.css">
  </head>
  <body bgcolor="">
  <jsp:useBean id="bugs" class="com.BTS.BugTrackingSystem.Model.BugReport" scope="request" />
<%--@elvariable id="BugSolution" type=""--%>
	<form:form modelAttribute="BugSolution" action="/viewsolution">
	<br>
	<center>
	<h4 align="center"><font color="red">
		</font></h4>
		<h3><font color="#FBB117" face="arial narrow">View Solution</font></h3>
		<table border="1" cellpadding="2" cellspacing="0" bordercolor="orange">
			<tr>
				<th>Employee Code</th>
				<th>Solution</th>
				<th>Date</th>
			</tr>
			<c:forEach items="" var="solve">
				<tr>
					<td><jsp:getProperty name="bugs" property="e_code"/></td>
					<td><jsp:getProperty name="bugs" property="solution"/></td>
					<td><jsp:getProperty name="bugs" property="bug_date"/></td>

				</tr>
			</c:forEach>
		</table>
		</center>
	</form:form>
  	<jsp:include page="./Footer.jsp" />
  </body>
</html>
