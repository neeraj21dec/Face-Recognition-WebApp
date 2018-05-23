<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
    
    
<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
   String name="";
   
   String gp_name=request.getParameter("gp");
   
HttpSession session1=request.getSession();
String mail=(String)session.getAttribute("email");
   
   
   
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
   
   
    try
 {
 st=con.createStatement();
 rs=st.executeQuery("select * from users where email='"+mail+"'");
   while(rs.next())

   {
   name=rs.getString(1);
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
    <link href="css/front.css" rel="stylesheet">
</head>

<body>

    <!-- Start your project here-->
   <!-- Image and text -->
<nav class="navbar navbar-dark green" style="height:100px;">
    
        
    <h1> <span class="badge black">Image processing</span></h1>
<h4>Welcome <%=name%>!</h4> 
    
    <button type="button" class="btn btn-outline-success waves-effect" style="position:relative;width:130px;left:35%;top:-80px;"><a href="afterlogin.jsp"><span style="position:relative;top:-7px;color:#4e504f;"><b>Home</b></span></a></button>
    <button type="button" class="btn btn-outline-success waves-effect" style="position:relative;width:150px;left:45%;top:-122px;"><a href="myup.jsp"><span style="position:relative;top:-7px;color:#4e504f;"><b>Uploads</b></span></a></button>
    <!--Dropdown primary-->
        <div class="dropdown" style="position:relative;left:90%;top:-160px;width:160px;">

            <!--Trigger-->
            <button class="btn btn-elegant dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Acounts</button>
            

            <!--Menu-->
            <div class="dropdown-menu dropdown-primary">
                <a class="dropdown-item" href="settings.jsp">settings</a>
                <a class="dropdown-item" href="logout.jsp">Logout</a>
                
            </div>
        </div>
        <!--/Dropdown primary-->
                
   
</nav>
    
    
     
        
    <h1> <span class="badge black" style="margin:20px 550px;"><%=gp_name%></span></h1>
	
    
    
    
    <div class="up" style="position:relative;left:70%;top:-70px;width:300px;">
         <h5><span class="badge black">+ Upload a image:</span></h5>
    <form method="post" action="testupload.jsp?gp=<%=gp_name%>" ENCTYPE="multipart/form-data">    
       
        
    <input type="file" name="f1"/>
        
        <button type="submit" class="btn btn-outline-success waves-effect">Click to Upload</button>
        </form>
        
    </div>
    
    
    
    
    
    
    
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
       String image_name=url+rs.getString(2);
	   String im=rs.getString(2);
       
   
       %>
                         
      
	
	 <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-r">

            <!--Card-->
            <div class="card testimonial-card">

                <!--Background color-->
                <div class="card-up teal lighten-2">
                </div>

                <!--Avatar-->
                
               <div class="avatar"><a href="tag.jsp?ims=<%=im%>&gp=<%=gp_name%>"><img src="<%= image_name %>" alt="avatar" class="rounded-circle img-responsive"></a>
                </div>
                  
           
                
                    
                

                <div class="card-body">
                   
                    <!--Quotation-->
                  
                   
                </div>

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->   
           
       
       
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

