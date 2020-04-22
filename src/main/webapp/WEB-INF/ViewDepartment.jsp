<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<jsp:include page="Header.jsp" />
	<head>

		<link href="styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<title>All Departments</title>
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
<%--		<jsp:useBean id="department" beanName="com.BTS.BugTrackingSystem.Model.Department" type="com.BTS.BugTrackingSystem.Model.Department"/>--%>
		<form:form modelAttribute="department" action="dept" id="department" method="get">
			<h3 align="center">View Department</h3>
			<br>
			<table class="notebook" align="center"  border="1" cellpadding="2" cellspacing="0" bordercolor="orange">
			<tr class="row_title">
				<th align="center">Department Name</th>
				<th align="center">Location</th>
				<th align="center">Delete</th>

			<tr>

				<td align="center"><form:label path="d_name" id="d_name" name="d_name"/></td>
				<td align="center"><form:label path="location" id="location" name="location"/></td>
				<td align="center"><a href="deleteDept?deptno=<form:label path="d_id" id="d_id" name="d_id"/>">Delete</a></td>
			</tr>
			</table>
		</form:form>
	</body>
	<jsp:include page="Footer.jsp" />
</html>