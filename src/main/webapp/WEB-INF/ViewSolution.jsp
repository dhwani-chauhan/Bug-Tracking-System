<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
	  <title>All Solutions</title>
  </head>
  <body>
  <jsp:include page="links.jsp"/>
  <jsp:include page="header1.jsp" />
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
			<c:forEach items="${viewSolution}" var="viewSolution">
				<tr>
					<td>${viewSolution.e_code}\</td>
					<td>${viewSolution.solution}</td>
					<td>${viewSolution.b_date}</td>
				</tr>
			</c:forEach>
		</table>
		</center>
  <jsp:include page="Footer.jsp" />
  </body>
</html>
