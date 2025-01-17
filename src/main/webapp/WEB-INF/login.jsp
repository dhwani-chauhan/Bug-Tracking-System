<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
    <title>LogIn</title>
    <style>
        .login-dark {
            height: 650px;
            background: url(../Images/star-sky.jpg) #475d62;
            background-size: auto;
            background-size: cover;
            position: relative;
        }
        .login-dark form {
            max-width: 320px;
            width: 90%;
            background-color: #1e2833;
            padding: 40px;
            border-radius: 4px;
            transform: translate(-50%,-50%);
            position: absolute;
            top: 50%;
            left: 50%;
            color: #fff;
            box-shadow: 3px 3px 4px rgba(0,0,0,.2);
        }
        .login-dark .illustration {
            text-align: center;
            padding: 15px 0 20px;
            font-size: 100px;
            color: #2980ef;
        }
        .login-dark form .form-control {
            background: 0 0;
            border: none;
            border-bottom-color: currentcolor;
            border-bottom-style: none;
            border-bottom-width: medium;
            border-bottom: 1px solid #434a52;
            border-radius: 0;
            box-shadow: none;
            outline: 0;
            color: inherit;
        }
        .form-control {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            padding: .375rem .75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        button, input {
            overflow: visible;
        }
        button, input, optgroup, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .btn-primary:not(:disabled):not(.disabled).active:focus, .btn-primary:not(:disabled):not(.disabled):active:focus, .show > .btn-primary.dropdown-toggle:focus {
            box-shadow: 0 0 0 .2rem rgba(38,143,255,.5);
        }
        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show > .btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #0062cc;
            border-color: #005cbf;
        }
        .login-dark form .btn-primary:active {
            transform: translateY(1px);
        }
        .login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
            background: #214a80;
            outline: none;
        }
        .login-dark form .btn-primary {
            background: #214a80;
            border: none;
            border-radius: 4px;
            padding: 11px;
            box-shadow: none;
            margin-top: 26px;
            text-shadow: none;
            outline: none;
        }
        .btn-primary.focus, .btn-primary:focus {
            color: #fff;
            background-color: #0069d9;
            border-color: #0062cc;
            box-shadow: 0 0 0 .2rem rgba(38,143,255,.5);
        }
        .btn-primary:hover {
            color: #fff;
            background-color: #0069d9;
            border-color: #0062cc;
        }
        .btn.focus, .btn:focus {
            outline: 0;
            box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);
        }
        .btn:hover {
            color: #212529;
            text-decoration: none;
        }
        [type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
            cursor: pointer;
        }

        button:focus {
            outline: 1px dotted;
            outline: 5px auto -webkit-focus-ring-color;
        }

        .btn-block {
            display: block;
            width: 100%;
        }

        .btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }

        @media (prefers-reduced-motion:reduce) {
            .btn {
                transition: none;
            }
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            color: #212529;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-color: transparent;
            border: 1px solid transparent;
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        [type=button], [type=reset], [type=submit], button {
            -webkit-appearance: button;
        }

        button, select {
            text-transform: none;
        }

        button, input {
            overflow: visible;
        }

        button, input, optgroup, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

        button {
            border-radius: 0;
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0,0,0,0);
            white-space: nowrap;
            border: 0;
        }

        .h2, h2 {
            font-size: 2rem;
        }

        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            margin-bottom: .5rem;
            font-weight: 500;
            line-height: 1.2;
        }

        h1, h2, h3, h4, h5, h6 {
            margin-top: 0;
            margin-bottom: .5rem;
        }


    </style>
    </head>
    <body>
        <jsp:include page="links.jsp"/>
        <div class="login-dark">
            <form>
                <h2 class="sr-only"> Log In</h2>
                <form:form method="post"  id="loginForm" modelAttribute="developer" action="login">
                    <div class="illustration">
                        <i class="icon ion-ios-locked-outline"></i>
                    </div>
                    <div class="form-group">
                        <form:input class="form-control" path="username" name="username" placeholder="Enter UserName"/>
                    </div>
                    <div class="form-group">
                        <form:password class="form-control" path="password" name="password" placeholder="Enter Password"/>
                    </div>
                    <div class="form-group">
                        <form:button class="btn btn-primary btn-block" id="login" name="login">Log In</form:button>
                    </div>
                    <a class="btn btn-primary btn-block" href="Home.jsp">Home</a>
                </form:form>
            </form>
        </div>
    </body>
</html>