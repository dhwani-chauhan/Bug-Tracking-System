<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="com.BTS.BugTrackingSystem.*" %>
<%@ page import="com.BTS.BugTrackingSystem.Repository.DeveloperRepo" %>
<%@ page import="org.apache.catalina.User" %>

<html>
    <head>
        <style type="text/css">

            .dropbtn {
                background-color: orange;
                color: white;
                padding: 10px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: orange;
            }

        </style>

    </head>
    <body bgcolor="white">
        <form>
            <table width="100%" border=0 height="150px">
                <tr>
                    <td align=""><img src="Images/header.jpeg" height="120"></img></td>
                    <td align="center"><font face="arial narrow" size="8 px" color="orange"><b> Bug Tracking System</b></font></td>
                    <td align="right">
                        <form>
                            <div class="dropdown">
                                <button class="dropbtn">Bug Report</button>
                                <div class="dropdown-content" align="left">
                                    <a href="./BugReport.jsp">Add&nbsp;Bug&nbsp;</a>
                                    <a href="./ViewBugs.jsp">View&nbsp;Bugs</a>
                                    <a href="./BugReport.jsp">Update&nbsp;Bug</a>
                                </div>
                            </div>

                            <div class="dropdown">
                                <button class="dropbtn">Bug Solution</button>
                                <div class="dropdown-content" align="left">
                                    <a href="./BugSolution.jsp">Add&nbsp;Solution&nbsp;</a>
                                    <a href="./ViewSolution.jsp">View&nbsp;Solutions</a>
                                    <a href="./BugSolution.jsp">Update&nbsp;Solution</a>
                                </div>
                            </div>

                            <div class="dropdown">
                                <button class="dropbtn">Department</button>
                                <div class="dropdown-content" align="left">
                                    <a href="./AddDepartment.jsp">Add&nbsp;Department&nbsp;</a>
                                    <a href="./ViewDepartment.jsp">View&nbsp;Departments</a>
                                    <a href="./UpdateDepartment.jsp">Update&nbsp;Departments</a>
                                </div>
                            </div>

                            <div class="dropdown">
                                <button class="dropbtn">Employee</button>
                                <div class="dropdown-content" align="left">
                                    <a href="./ViewEmployee.jsp">View&nbsp;Employee</a>
                                    <a href="./UpdateEmployee.jsp">Update&nbsp;Employee</a>
                                </div>
                            </div>

                            <div class="dropdown">
                                <button class="dropbtn">Project</button>
                                <div class="dropdown-content" align="left">
                                    <a href="./AddProject.jsp">Add&nbsp;Project&nbsp;</a>
                                    <a href="./ViewProject.jsp">View&nbsp;Project</a>
                                    <a href="./UpdateProject.jsp">Update&nbsp;Project</a>
                                </div>
                            </div>
                            </font>

                        </form>
                    </td>
                </tr>
                <tr>
                    <%
                        if(session.getAttribute("user") != null)
                        {
                            User user = (User) request.getSession().getAttribute("user");
                    %>
                   <td align="right" valign="bottom" colspan=2>
                            <b>  <%if(user.equals("admin")){%>Welcome,&nbsp;&nbsp; Admin<%} else {%>Welcome,&nbsp;&nbsp;${user.name} <%} %> </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <b>[ <font color="#FBC61">home</font></a> ]</b>&nbsp;
                            <%if(!user.equals("user")){%><b>[ <a href="./logout.jsp"><font color="#FBC61" size="3px">logout</font></a> ]</b><%} %>
                        </td>
                    <%
                    }
                    %>

                </tr>
            </table>


        </form>




    </body>
</html>