<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<head>
		<jsp:include flush="true" page="Header.jsp"></jsp:include>
		<link href="styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<title>Adminresponse</title>
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
		<form:form modelAttribute="getProject" action="/viewProject">
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
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
					<td align="center"><jsp:getProperty name="" property=""/></td>
<%--				<td align="center"><a href="DelProj?pid=<%=pid%>">Delete</a></td>--%>
<%--						<tr><th colspan=5>No Records found</th></tr>--%>
				</tr>
			</table>
		</form:form>
	</body>
	<jsp:include flush="true" page="Footer.jsp"/>
</html>