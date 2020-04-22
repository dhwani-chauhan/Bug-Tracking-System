<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<head>
		<jsp:include page="Header.jsp"></jsp:include>
		<link href="styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<title>All Projects</title>
		<script language="javascript">
			function Checkfiles()
			{
				 var fup = document.getElementById('my_file_element').value;
				 alert(fup);
				 if(fup=="")
				 {
					 alert("Upload at least one file");
					 document.getElementById('my_file_element').focus();
					 return false;
				 }
				 else if(fup!="")
				 {
					 alert("Not null");
					 var fileName = fup;

					 var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
					 alert(ext);
					 if(ext == "gif" || ext == "GIF" || ext == "JPEG" || ext == "jpeg" || ext == "jpg" || ext == "JPG")
					  {
								alert("correct format");
								return true;
					  }
					  else
					  {
								alert("Upload Gif or Jpg images only");
								document.getElementById('my_file_element').focus();
								return false;
					   }
					   return false;
				 }
			}
		</script>
	</head>
	<body class="SC">
<%--		<jsp:useBean id="projectDetails" beanName="com.BTS.BugTrackingSystem.Model.ProjectDetails" type="com.BTS.BugTrackingSystem.Model.ProjectDetails"></jsp:useBean>--%>
		<form:form modelAttribute="projectDetails" action="viewProj">
			<h3 align=center>View Project</h3>
			<br>
			<table class=notebook align=center>
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
				<tr>
					<td align="center"><form:label path="pname" id="pname" name="pname" /></td>
					<td align="center"><form:label path="s_date" id="s_date" name="s_date" /></td>
					<td align="center"><form:label path="duration" id="duration" name="duration" /></td>
					<td align="center"><form:label path="c_name" id="c_name" name="c_name" /></td>
					<td align="center"><form:label path="c_address" id="c_address" name="c_address" /></td>
					<td align="center"><form:label path="c_phno" id="c_phno" name="c_phno" /></td>
					<td align="center"><form:label path="c_email" id="c_email" name="c_email" /></td>
					<td align="center"><form:label path="p_lead" id="p_lead" name="p_lead" /></td>
					<td align="center"><form:label path="dept_name" id="dept_name" name="dept_name" /></td>
					<td align="center"><a href="deleteProject?pid=<form:label path="p_no" id="p_no" name="p_no"/>">Delete</a></td>
<%--						<tr><th colspan=5>No Records found</th></tr>--%>
				</tr>
			</table>
		</form:form>
	</body>
	<jsp:include page="Footer.jsp"/>
</html>