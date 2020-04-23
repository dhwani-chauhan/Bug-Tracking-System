

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">

    <style type="text/css">

        .dropbtn {
            background-color: lightblue;
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
            min-width: 120px;
            box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 5px 7px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #f1f1f1}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: lightgrey;
        }

    </style>
</head>

<body>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>


