<%@ page import="java.sql.*" %>
    <%@ page contentType="text/html" %>
        
<%

Connection con=null;
Statement st=null;
ResultSet rs=null;

String id=request.getParameter("id");

try
{

 // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 // con=DriverManager.getConnection("jdbc:odbc:pp");

Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost/imagepro","root","12345");
}

catch(ClassNotFoundException e1)
 {
 out.println(e1);
 }

catch(SQLException e2)
 {
 out.println(e2);
 }
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/reg.css" rel="stylesheet">
    
    
    <script>
    
    function fsuper()
        {
            var a=window.document.regform.name.value;
            var b=window.document.regform.mail.value;
            var c=window.document.regform.pwd.value;
            if(a==null || b==null || c==null)
            {alert("fuk off");
                return(false);
            }
            else
                return(true);
        }
    
    function pcheck()
        {
          var f=window.document.regform.pwd.value;
            if(f.length<8)
                alert("password is weak");
        }
        
    </script>
</head>

<body>
<nav class="navbar navbar-dark green" style="height:100px;">
    
        
    <h1> <span class="badge black">Image processing</span></h1>
    
   

    
    


    
    
</nav>
    <!-- Start your project here-->
   <!-- Form register -->
<form style="width:800px;margin:40px 400px;border:2px solid;padding:20px;" method="get" action="reg3.jsp" name="regform">
    <p class="h5 text-center mb-4"><u>Enter your college details:</u></p>

    <input type="text" id="orangeForm-name" class="form-control" name="branch" placeholder="Enter your branch">
 <input type="text" id="orangeForm-name" class="form-control" name="roll" placeholder="Enter your roll no">
  <input type="text" id="orangeForm-name" class="form-control" name="pass" placeholder="Enter your passing year">
  <input type="number" id="orangeForm-name" class="form-control" name="mob" placeholder="Enter your mobile number">
  <input type="text" id="orangeForm-name" class="form-control" name="add" placeholder="Enter your permanent address">
  <input type="hidden" id="orangeForm-name" class="form-control" name="id" value="<%=id%>">
    <div class="text-center">
        <button class="btn btn-elegant" type="submit" >Submit</button>
    </div>

</form>
<!-- Form register -->
    

                   <!--Footer-->
<footer class="page-footer green center-on-small-only">

    <!--Footer Links-->
    <div class="container-fluid">
        <div class="row">

            <!--First column-->
            <div class="col-md-6">
                <h5 class="title">Footer Content</h5>
                <p>Here you can use rows and columns here to organize your footer content.</p>
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-6">
                <h5 class="title">Links</h5>
                <ul>
                    <li><a href="#!">Link 1</a></li>
                    <li><a href="#!">Link 2</a></li>
                    <li><a href="#!">Link 3</a></li>
                    <li><a href="#!">Link 4</a></li>
                </ul>
            </div>
            <!--/.Second column-->
        </div>
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            © 2015 Copyright: <a href="https://www.MDBootstrap.com"> MDBootstrap.com </a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
                
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
