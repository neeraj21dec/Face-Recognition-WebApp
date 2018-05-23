<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
    
    
<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
   String name="";
   
   String gp_name=request.getParameter("gp");

   
//HttpSession session1=request.getSession();
//String mail=(String)session.getAttribute("email");
   
   
   
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
    <link href="css/front.css" rel="stylesheet">
</head>

<body>

    <!-- Start your project here-->
   <!-- Image and text -->
<nav class="navbar navbar-dark green" style="height:100px;">
    
        
    <h1> <span class="badge black">Image processing</span></h1>
<h4>Welcome</h4> 
    <a href="logout.jsp"><button type="button" class="btn btn-elegant" style="position:relative;left:87%;top:-90px;">Logout</button></a>
 <!--Footer-->
    <!--Dropdown primary-->
       
        <!--/Dropdown primary-->
                
   
</nav>
    
    
     
        
    <h1> <span class="badge black" style="margin:20px 550px;"><%=gp_name%></span></h1>
    
    
    
   
    
    
    
    
    
    
<!-- Grid row -->
<div class="row" style="margin-top:10px;width:1000px;margin-left:10px;">
    
    <%
       
try
 {
 st=con.createStatement();
 rs=st.executeQuery("select * from uploads where gp='"+gp_name+"'");
       
       while(rs.next())
       {
       String url="uploads/";
       String image_name=rs.getString(2);
       
   
       %>
                         
       <div class="col-lg-4 col-md-12" style="margin:4px 4px;">

        <!--Card Wider-->
        <div class="card card-cascade wider">

            <!--Card image-->
            <div class="view overlay hm-white-slight">
                <img src=" <%= url+image_name %>" style="width:100px;" class="img-fluid" alt="wider">
                <a href="admin_im_view.jsp?im=<%=image_name%>">
                    <div class="mask"></div>
                </a>
            </div>
            <!--/Card image-->

            <!--Card content-->
            
            <!--/.Card content-->

        </div>
        <!--/.Card Wider-->

    </div>
    <!-- Grid column -->

       
       
     <%  
       }
       
       
       
       
     con.close();
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

    

</div>
<!-- Grid row -->
                
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
                    <li><a href="#!">Admin Login</a></li>
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

