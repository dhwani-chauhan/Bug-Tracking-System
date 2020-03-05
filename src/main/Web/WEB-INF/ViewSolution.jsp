<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Login.html</title>
	  <jsp:include page="./Header.jsp"></jsp:include>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="./styles.css">
  </head>
  <body bgcolor="">
  <jsp:useBean id="bugs" class="BugReport" scope="request" />
<form:form modelAttribute="BugSolution" action="/viewsolution">
<br>
<center>
<h4 align="center"><font color="red">
<%if(request.getParameter("msg")!=null)
{ %>
<%=request.getParameter("msg")%>
<%} %>
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
			<td><jsp:getProperty name="bugs" property="bug_date"/></td>
			<td><jsp:getProperty name="bugs" property="bug_date"/></td>
			<td><jsp:getProperty name="bugs" property="bug_date"/></td>

		</tr>
	</c:forEach>
	</table>
  	</center>
	</form:form>
	<jsp:include page="./footer.jsp" />
	</body>
</html>
