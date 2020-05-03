<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>All Departments</title>
	</head>
	<body>
		<jsp:include page="header1.jsp" />
		<h3 align="center">All Departments</h3>
		<table class=notebook align=center cellspacing="0" cellpadding="8" border="2px solid black">
			<tr class="row_title">
				<th align="center">Department Name</th>
				<th align="center">Location</th>
				<th align="center">Delete</th>
			</tr>
			<c:forEach items="${department}" var="dept">
				<tr>
					<td align="center">${dept.d_name}</td>
					<td align="center">${dept.location}</td>
					<td align="center"><a href="deleteDept?deptno=" + ${dept.d_id}>Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<jsp:include page="Footer.jsp" />
	</body>
</html>