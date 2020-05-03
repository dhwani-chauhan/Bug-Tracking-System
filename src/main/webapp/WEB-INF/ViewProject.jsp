<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>All Projects</title>
	</head>
	<body>
		<jsp:include page="links.jsp"/>
		<jsp:include page="header1.jsp" />
		<h3 align=center>All Projects</h3>
		<table class=notebook align=center cellspacing="0" cellpadding="8" border="2px solid black">
			<tr class=row_title>
				<th align="center">ProjectName</th>
				<th align="center">Submission Date</th>
				<th align="center">Duration</th>
				<th align="center">ClientName</th>
				<th align="center">ClientAddress</th>
				<th align="center">PhoneNo</th>
				<th align="center">EmailId</th>
				<th align="center">ProjectLead</th>
				<th align="center">DeptName</th>
				<th align="center">Delete</th>
			</tr>
			<c:forEach items="${projectDetails}" var="projectDetails">
				<tr>
					<td align="center">${projectDetails.p_name}</td>
					<td align="center">${projectDetails.s_date}</td>
					<td align="center">${projectDetails.duration}</td>
					<td align="center">${projectDetails.c_name}</td>
					<td align="center">${projectDetails.c_address}</td>
					<td align="center">${projectDetails.c_phno}</td>
					<td align="center">${projectDetails.c_email}</td>
					<td align="center">${projectDetails.p_lead}</td>
					<td align="center">${projectDetails.dept_name}</td>
					<td align="center"><a href="deleteProject?pid=" + ${projectDetails.p_no}>Delete</a></td>
						<%--						<tr><th colspan=5>No Records found</th></tr>--%>
				</tr>
			</c:forEach>
		</table>
		<jsp:include page="Footer.jsp"/>
	</body>
</html>