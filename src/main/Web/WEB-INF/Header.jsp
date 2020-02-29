<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@ page import="com.BTS.BugTrackingSystem.Repository.DeveloperRepo" %>
<%@ page import="org.apache.catalina.User" %>
<!DOCTYPE html>
<html>
<body bgcolor="white">
<form>
	<table width="100%" border=0>
	<tr>
	<td align=""><img src="./Images/header.jpeg" height="120"></img></td>
	<td align=""><font face="arial narrow" size="5px" color="orange"><b> Bug Tracking System</b></font></td>
	</tr>
	<tr>
        <%
            if(session.getAttribute("user") != null)
            {
                User user = (User) request.getSession().getAttribute("user");
        %>
<%--	<%--%>
<%--	HttpSession hs=request.getSession();--%>
<%--    String uname=(String)hs.getAttribute("userid");--%>
<%--	String role=(String)hs.getAttribute("role");--%>
<%--	 %>--%>
	   <td align="right" valign="bottom" colspan=2>
                <b>  <%if(user.equals("admin")){%>Welcome,&nbsp;&nbsp; Admin<%} else {%>Welcome,&nbsp;&nbsp;${user.name} <%} %> </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <b>[ <%if(user.equals("admin")){%><a href="./AdminHome.jsp"><%}
                        else if(user.equals("Tester")){%><a href="./TesterHome.jsp?cat=Tester"><%}
                        else if(user.equals("Developer")){%><a href="./DeveloperHome.jsp?cat=Developer&uname=${user.name}"><%}
                        else if(user.equals("HrManager")){%><a href="./HrMangerHome.jsp?cat=HrMangager&uname=${user.name}"><%} %><font color="#FBC61">home</font></a> ]</b>&nbsp;
                <%if(!user.equals("user")){%><b>[ <a href="./logout.jsp"><font color="#FBC61" size="3px">logout</font></a> ]</b><%} %>
            </td>
        <%
        }
        
        %>

	</tr>
	</table>
	
<%--	<script type="text/javascript">--%>
<%--sfHover = function() {--%>
<%--   var sfEls = document.getElementById("nav").getElementsByTagName("LI");--%>
<%--   for (var i=0; i<sfEls.length; i++) {--%>
<%--      sfEls[i].onmouseover=function() {--%>
<%--         this.className+=" over";--%>
<%--      }--%>
<%--      sfEls[i].onmouseout=function() {--%>
<%--         this.className=this.className.replace(new RegExp(" over\\b"), "");--%>
<%--      }--%>
<%--   }--%>
<%--}--%>
<%--if (window.attachEvent) window.attachEvent("onload", sfHover);--%>

<%--</script>--%>


<style type="text/css">

ul.nav, ul.nav ul {
   margin: 0;
   padding: 0px;
   list-style: none;
}

ul#nav  li {
   position: relative;
   float: left;
   width:140px;
   font-size: 12px;
}
   
#nav li ul {
   position: absolute;
   margin-left: -999em; /* hide menu from view */
   top: 20px;
   left:0;
}

/* Styles for Menu Items */
ul#nav  li a {
   display: block;
   text-decoration: none;
   color:black;
   padding: 2px;
   border: 1px solid #ccc;
   min-height:0;
   }
/* commented backslash mac hiding hack \*/
* html ul#nav  li a {height:1%;   position:relative;}
/* end hack */

/* this sets all hovered lists to black */
#nav li:hover a,#nav  li.over a,
#nav li:hover li a:hover,#nav li.over li a:hover {
   color: #fff;
   background-color: black;}
    
/* set dropdown to default */
#nav li:hover li a,#nav li.over li a {
   color: black;
   background-color:silver;
}
#nav li ul li a { padding: 2px 2px; } /* Sub Menu Styles */
#nav li:hover ul,#nav li.over ul {margin-left:0; } /* show menu*/

</style>

<body bgcolor="white">
<form>
<hr>

<table border=0 align=right>
<tr><td>
<font size="3px">
  <ul class="nav">
      <li><a href="#">Department</a>
          <ul id="nav">
              <li><a href="./AddDepartment.jsp">Add&nbsp;Department&nbsp;</a></li>
              <li><a href="./ViewDepartment.jsp">View&nbsp;Departments</a></li>
              <li><a href="./UpdateDepartment.jsp">Update&nbsp;Departments</a></li>
          </ul>
      </li>
      <li><a href="#">Employee </a>
          <ul>
              <li><a href="./ViewEmployee.jsp">View&nbsp;Employee&nbsp;</a></li>
              <li><a href="./UpdateEmployee.jsp">Update&nbsp;Employee</a></li>
          </ul>
      </li>
<%--      <li><a href="#">Project </a>--%>
<%--          <ul>--%>
<%--              <li><a href="./AddProject.jsp">Add Project</a></li>--%>
<%--              <li><a href="./ViewProject.jsp">View Project</a></li>--%>
<%--              <li><a href="./UpdateProject.jsp">Update&nbsp;Project</a></li>--%>
<%--          </ul>--%>
<%--      </li>--%>
<%--      <li><a href="#">Permission </a>--%>
<%--          <ul>--%>
<%--              <li><a href="./EmployeePermission.jsp">Employee</a></li>--%>
<%--          </ul>--%>
<%--      </li>--%>
  </ul>
  </font>
</td></tr>
</table>
<br>

</form>
</body>
</html>