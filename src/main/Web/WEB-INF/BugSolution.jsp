<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Login.html</title>
  	<jsp:include page="./Header.jsp"></jsp:include>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" language="javascrpt">
    	function check()
    	{

    		if(testerForm.bug_date.value=='')
    		{
    			window.alert("Bug Date is empty !");
    			return false;
    		}
    		if(testerForm.e_code.value=="select")
    		{
    			window.alert("Employee Code is empty !");
    			return false;
    		}
    		if(testerForm.status.value=="select")
    		{
    			window.alert("Select Status !");
    			return false;
    		}
    		
       	}
    </script>
<script LANGUAGE="Javascript" src="dateget.js">
	</script>
  </head>
  <body bgcolor="">
<jsp:useBean id="solve" beanName="BugSolution"/>
<form:form modelAttribute="BugSolution" action="/solution">
  	<center>

<h3><font color="#FBB117" face="arial narrow">&nbsp;&nbsp;&nbsp;&nbsp;</font></h3>
  	<table border="0" cellpadding="2" >

  		<tr>
			<td align="right"><font>Bug_type</font></td>
			<td><input type="text" name="bug_name" value="<jsp:setProperty name="solve" property="bug_no"/>"></td></tr>
<%--  		<tr>--%>
<%--			<td align="right"><font>Bug_type</font></td>--%>
<%--			<td><input type="text" name="bug_type" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
<%--  		<tr>--%>
<%--			<td align="right"><font>Bug_level</font></td>--%>
<%--			<td><input type="text" name="bug_level" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
<%--		<tr>--%>
<%--			<td align="right"><font>Priority</font></td>--%>
<%--			<td><input type="text" name="priority" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
<%--  		<tr>--%>
<%--			<td align="right"><font>Project Name</font></td>--%>
<%--			<td><input type="text" name="pname" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
<%--  		<tr>--%>
<%--			<td align="right"><font>Tester Code</font></td>--%>
<%--			<td> <input type="text" name="tester_code" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
  		<tr>
			<td align="right"><font>Bug Date</font></td>
			<td> <input type="text" name="bug_date" value="<jsp:setProperty name="solve" property="b_date"/>"></td></tr>
  		<tr>
			<td align="right"><font>Employee code</font></td>
			<td> <input type="text" name="e_code" value="<jsp:setProperty name="solve" property="e_code"/>"></td></tr>
<%--  		<tr>--%>
<%--			<td align="right"><font>Tester Status</font></td>--%>
<%--			<td> <input type="text" name="e_code" value="<jsp:setProperty name="bug_no" property="bug_no"/>"></td></tr>--%>
<%--  		<tr>--%>
<%--			<td align="right"><font>Posted Date</font></td>--%>
<%--			<td> <input type="text" name="pdate" ></input>--%>
<%--<a href="javascript:show_calendar('document.testerForm.pdate', document.testerForm.pdate.value);">date</a>--%>

<%--</td></tr>  		--%>
  		<tr><td align="right"><font>Solution</font></td><td>
  		<textarea name="solution" rows=3 cols=16> </textarea>
  		</td></tr>  		
  		<tr><td align="center" colspan="2"><input type="hidden" name="bugid" value="<jsp:getProperty name="solve" property="bug_no"/>"></td></tr>
  		<tr><td align="center" colspan="2"><input type="submit" value="submit"></td></tr>  		  		  		
  	</table>
  	</center>
</form:form>
   </body>
<jsp:include page="./footer.jsp" />   
</html>