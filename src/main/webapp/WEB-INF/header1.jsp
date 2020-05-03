<body>
    <jsp:include page="links.jsp"/>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
        <div class="container"><a class="navbar-brand logo" href="#">Bug Tracking System</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto text-uppercase">
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Bug Report</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" href="./BugReport.jsp">Add&nbsp;Bug&nbsp;</a>
                            <a class="dropdown-item" role="presentation" href="./ViewBugs.jsp">View&nbsp;Bugs</a>
                            <a  class="dropdown-item" role="presentation" href="./BugReport.jsp">Update&nbsp;Bug</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Bug Solution</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" href="./BugSolution.jsp">Add&nbsp;Solution&nbsp;</a>
                            <a class="dropdown-item" role="presentation" href="./ViewSolution.jsp">View&nbsp;Solutions</a>
                            <a  class="dropdown-item" role="presentation" href="./BugSolution.jsp">Update&nbsp;Solution</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Department</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" href="./AddDepartment.jsp">Add&nbsp;Department&nbsp;</a>
                            <a class="dropdown-item" role="presentation" href="./ViewDepartment.jsp">View&nbsp;Departments</a>
                            <a  class="dropdown-item" role="presentation" href="./AddDepartment.jsp">Update&nbsp;Department</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Project</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" href="./AddProject.jsp">Add&nbsp;Project&nbsp;</a>
                            <a class="dropdown-item" role="presentation" href="./ViewProjects.jsp">View&nbsp;Projects</a>
                            <a  class="dropdown-item" role="presentation" href="./AddProject.jsp">Update&nbsp;Project</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Employees</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" href="./ViewEmployee.jsp">View Employees</a>
                            <a class="dropdown-item" role="presentation" href="./EmployeeDetails.jsp">Edit Profile</a>
                            <a  class="dropdown-item" role="presentation" href="./AssignProject.jsp">Assign Project</a>
                            <a  class="dropdown-item" role="presentation" href="./AssignBug.jsp">Assign&nbsp;Bug</a>
                        </div>

                    </li>


                </ul>
                <span class="navbar-text actions">
                    <a class="btn btn-light action-button" role="button" href="login.jsp">Log In</a>
                </span>
            </div>
        </div>
    </nav>

</body>


