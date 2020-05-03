<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
	  <title>All Bugs</title>
  </head>
  <body bgcolor="">
	  <jsp:include page="links.jsp"/>
	  <jsp:include page="header1.jsp" />
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
<%--				${viewReport}--%>
			<c:forEach items="${viewReport}" var="report">
				<tr>
<%--					${report}--%>
					<td>${report.bug_name}</td>
					<td>${report.bug_type}</td>
					<td>${report.bug_level}</td>
					<td>${report.priority}</td>
					<td>${report.pname}</td>
					<td>${report.tester_code}</td>
					<td>${report.bug_date}</td>
					<td>${report.e_code}</td>
					<td>${report.status}</td>
					<td><a href="./UpdateBug.jsp?bugid=" + ${report.bug_no}>Update</a></td>
					<td><a href="./ViewSolution.jsp?bugid=" + ${report.bug_no}>View Solution</a></td>
				</tr>
			</c:forEach>
	  </table>
	  <jsp:include page="Footer.jsp"/>
  </body>
</html>
