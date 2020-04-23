<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Add project</title>

		<script LANGUAGE="Javascript" >
			function ChkMandatoryField(F,T){
				var val= F.value;
				if(val==""){alert(T+" is mandatory");return false;}
			}
			function validate()
			{
				if(ChkMandatoryField(proj.pname,'ProjectName')==false) return false;
				if(ChkMandatoryField(proj.desc,'Description')==false) return false;
				 if(ChkMandatoryField(proj.sdate,'date')==false) return false;
				if(ChkMandatoryField(proj.duration,'Duration')==false) return false;
				if(ChkMandatoryField(proj.c_name,'Name')==false) return false;
				if(ChkMandatoryField(proj.c_address,'Address')==false) return false;
				if(ChkMandatoryField(proj.c_phone,'Phone')==false) return false;
				 if(ChkMandatoryField(proj.c_email,'Mailid')==false) return false;
			}
		</script>
		<script LANGUAGE="Javascript" src="../../resources/static/js/dateget.js"></script>
	</head>
	<body bgcolor="silver">
	<jsp:include flush="true" page="header1.jsp"></jsp:include>

<%--		<jsp:useBean id="projextDetails" beanName="com.BTS.BugTrackingSystem.Model.ProjectDetails" type="com.BTS.BugTrackingSystem.Model.ProjectDetails"></jsp:useBean>--%>
		<form:form action="addProj" modelAttribute="projectDetails">
		<center>
			<h3>ADD PROJECT</h3></center>
			<center>
			<table>
				<tr>
				  <td align="left">&nbsp;Project Name:</td>
				  <td><form:input path="p_name" name="p_name" id="p_name" /></td>
				</tr>
				<tr>
				  <td align="left">Project Description</td>
				  <td><form:textarea path="p_desc" id="p_desc" name="p_desc" cols="20" rows="3"/></td>
				  </tr>
				<tr>
				  <td align="left">&nbsp;Submission Date</td>
				  <td><form:input path="s_date" name="s_date" id="s_date" />
				<a href="javascript:show_calendar('document.proj.sdate', document.proj.sdate.value);">date</a>
				</tr>
				<tr>
				  <td align="left">&nbsp;Duration:</td>
				  <td><form:input path="duration" name="duration" id="duration" /></td>
				</tr>
				<tr>
				  <td align="left">&nbsp;Client Name:</td>
				  <td><form:input path="c_name" name="c_name" id="c_name" /></td>
				</tr>
				<tr>
				  <td align="left">Client Address</td>
				  <td><form:textarea id="c_address" name="c_address" cols="20" rows="3" path="c_address"/></td>
				  </tr>
				<tr>
				  <td align="left">&nbsp;Phone No:</td>
				  <td><form:input path="c_phno" name="c_phno" id="c_phno" /></td>
				</tr>
				<tr>
				  <td align="left">&nbsp;EmailId:</td>
				  <td><form:input path="c_email" name="c_email" id="c_email" /></td>
				</tr>
				<tr>
					<td align="left">Department Name:</td>
					<td>
						<form:select path="dept_name">
                            <form:option value="-- select--"/>
                            <c:forEach items="${dept_name}" var="dept_name">
                                <form:option value="${dept_name}">${dept_name}</form:option>
                            </c:forEach>
						</form:select>
					</td>
				</tr>
				<tr>
					<td align="left">Project Lead:</td>
					<td>
						<form:select path="p_lead">
                            <form:option value="-- select--"/>
                            <c:forEach items="${p_lead}" var="p_lead">
                                <form:option value="${p_lead}">${p_lead}</form:option>
                            </c:forEach>

						</form:select>
					</td>
				</tr>
				<tr>
                    <td><form:button id="submit" name="submit" value="Add Project" onClick="return validate()"> Add Proejct</form:button></td></tr>
			</table>
			</center>
		</form:form>
	</body>
	<jsp:include page="Footer.jsp"/>
</html>
