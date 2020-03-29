<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<jsp:include page="./Header.jsp"></jsp:include>
<head>
    <script LANGUAGE="Javascript" >
        function ChkMandatoryField(F,T){
            var val= F.value;
            if(val==""){alert(T+" is mandatory");return false;}
        }
        function validate()
        {
            if(ChkMandatoryField(login.dname,'DepartmentName')==false) return false;
            if(ChkMandatoryField(login.location,'Location')==false) return false;
        }
    </script>
</head>
<body bgcolor="silver">
    <form  name="login" action="addDept" name="frm">
        <center>
        <h3>ADD DEPARTMENT</h3></center>
        <center>
        <table>
            <tr>
                <td>&nbsp;Department Name:</td>
                <td><input type="text" name="dname" value="<jsp:getProperty name="" property=""/>"></td>
            </tr>
            <tr>
                <td>Department Location:</td>
                <td><input type="text" name="location" value="<jsp:getProperty name="" property=""/>"></td>
            </tr>
            <tr>
                <td><input type="submit" name="login" value="Add" onClick="return validate()"></td>
            </tr>
        </table>
        </center>
    </form>
</body>
<jsp:include page="./Footer.jsp" />
