<%@ page import="java.sql.*" %>
    <%@ page contentType="text/html" %>
        
<%

Connection con=null;
Statement st=null;
ResultSet rs=null;


  String id=request.getParameter("id");
String mssg=request.getParameter("mssg");

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

 String up1="",up2="",up3="",up4="",up5="";
 
  try
 {
 st=con.createStatement();
  rs=st.executeQuery("select * from selfpics where id="+id+"");
   while (rs.next())
   {
	   up1=rs.getString(2);
	   up2=rs.getString(3);
	   up3=rs.getString(4);
	   up4=rs.getString(5);
		up5=rs.getString(6);
   }
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
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
<%=mssg%>


            
    <FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp?up=1&id=<%=id%>" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                    
                    <tr><td><b>Choose 1st your image:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="upload" ></p></td></tr>
             <table>
     </center>      
     </FORM>
		
	 <FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp?up=2&id=<%=id%>" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                   
                    <tr><td><b>Choose 2nd your image:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="upload" ></p></td></tr>
             <table>
     </center>      
     </FORM>

	 
	 <FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp?up=3&id=<%=id%>" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                   
                    <tr><td><b>Choose 3rd your image:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="upload" ></p></td></tr>
             <table>
     </center>      
     </FORM>

	 
	 <FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp?up=4&id=<%=id%>" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                    
                    <tr><td><b>Choose 4th your image:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="upload" ></p></td></tr>
             <table>
     </center>      
     </FORM>

	 
	 <FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp?up=5&id=<%=id%>" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                    
                    <tr><td><b>Choose 5th your image:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="upload" ></p></td></tr>
             <table>
     </center>      
     </FORM>
<br/>


<a href="details.jsp?id=<%=id%>" class="btn btn-elegant">Next</a>
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
