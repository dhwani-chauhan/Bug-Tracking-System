<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
    <title>Login.html</title>
  	<jsp:include page="./Header.jsp" />
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{
    		if(Assignproject.pname.value=="select")
    		{
    			window.alert("Select Project Name!");
    			return false;
    		}       	
    		if(Assignproject.e_code.value=="select")
    		{
    			window.alert("Select Employee Code!");
    			return false;
    		}    
    		if(Assignproject.role.value=='')
    		{
    			window.alert("role is Empty !");
    			return false;
    		}
		}
    </script>
  </head>
  <body bgcolor="">
	<jsp:useBean id="project" class="com.BTS.BugTrackingSystem.Model.AssignProject" scope="request" />
	<%--@elvariable id="AssignProject" type=""--%>
	<form:form modelAttribute="AssignProject" action="/assignproject">//Method Post
	   <p><font color="red"></font></p>
		<center>
		<h3><font color="#FBB117">&nbsp;&nbsp;&nbsp;&nbsp;Assign Project</font></h3>
		<table border="0" cellpadding="2">
			<tr>
				<td align="right"><font><b>Project Name</b></font></td>
				<td>
					<select name="pname">
						<option value="select">---select---</option> //until user list
					</select>
			<tr>
				<td align="right"><font><b>Employee code</b></font></td>
				<td>
					<select name="e_code">
						<option value="select">---select---</option>//until emp ids
					</select>
			<tr>
				<td align="right"><font><b>Role</b></font></td>
				<td> <input type="text" name="role" value="<jsp:setProperty name="" property=""/>"></td></tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="submit"></td></tr>
		</table>
		</center>
	</form:form>
   </body>
<jsp:include page="./Footer.jsp" />
</html>