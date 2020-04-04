<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
	<jsp:include page="Header.jsp" />
	<head>

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
		<form:form name="get ElementById">
			<h3 align=center>View Deparments</h3>
			<br>
			<table class=notebook align=center >
			<tr class=row_title>
				<th align="center">DepartmentName</th>
				<th align="center">Location</th>
				<th align="center">Delete</th>

			<tr class= <%=(DisRow%2!=0)? "row_even" : "row_odd"%>>

				<td align="center"><%=dname%></td>
				<td align="center"><%=location%></td>
				<td align="center"><a href="DeleteDept?deptno=<%=dno%>">Delete</a></td>
			</table>
		</form:form>
	</body>
	<jsp:include page="Footer.jsp" />
</html>