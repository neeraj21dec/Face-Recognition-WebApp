<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
<%@ page import="java.util.*" %>


<%
   
   
  HttpSession session1=request.getSession();
String mail=(String)session.getAttribute("email");

Connection con=null;
Statement st=null;
ResultSet rs=null;
   
   String name="";

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
 rs=st.executeQuery("select * from admins where mail='"+mail+"';");
       
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
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-dark green" style="height:100px;">
    
        
    <h1>Image processing  <span class="badge black">Admin panel</span></h1>
<h4>Welcome <%=name%>!</h4>
    


    
    
</nav>  
<a href="logout.jsp"><button type="button" class="btn btn-elegant" style="position:relative;left:87%;top:-90px;">Logout</button></a>
 <!--Footer-->
 <h2><span class="badge black">Recent Uploads</span></h2>
 <%
 ArrayList al = new ArrayList();
 String im="";
 try
 {
 st=con.createStatement();
 rs=st.executeQuery("select upload from uploads");
       
       while(rs.next())
      {
                                                              
        im=rs.getString(1);                                                      
         al.add(im);                                             
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
 
 
 
 <%
 int s=al.size();
String url="uploads/";
String im_name="";
 for(int i=(s-1);i>=(s-4);i--)
{
im_name=(String)al.get(i);
%>

			
			<!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-r">

            <!--Card-->
            <div class="card testimonial-card" style="width:200px;">

                <!--Background color-->
                <div class="card-up teal lighten-2">
                </div>

                <!--Avatar-->
                
               <div class="avatar"><a href="admin_im_view.jsp?im=<%=im_name%>"><img src="<%= url+im_name %>" alt="avatar" class="rounded-circle img-responsive"></a>
                </div>
                  
           
                
                    
                

                <div class="card-body">
                   
                    <!--Quotation-->
                  
                   
                </div>

            </div>
            <!--Card-->

        </div>
			<%
 
}%>

 <br/>
 <section class="section pb-3 text-center" style="margin-top:-80px;width:1000px;margin-left:180px;">

    <!--Section heading-->
    <h1 class="section-heading h1 pt-4"><span class="badge black">Groups</span></h1>
   
 
 
 <br/>
 
    <div class="row" >
        
        <%
		String group="",members="",logo="";

try
 {
 st=con.createStatement();
 rs=st.executeQuery("select * from groups");
   while(rs.next())

   {
   group=rs.getString(1);
    members=rs.getString(2);  
           logo=rs.getString(3);
           
    %>       
           
              
        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-r">

            <!--Card-->
            <div class="card testimonial-card">

                <!--Background color-->
                <div class="card-up teal lighten-2">
                </div>

                <!--Avatar-->
                <div class="avatar"><img src="gp%20icons/<%=logo%>" alt="avatar" class="rounded-circle img-responsive">
                </div>

                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1"><%=group%></h4>
                    <hr>
                    <!--Quotation-->
                  
                    <a href="admingp.jsp?gp=<%=group%>"><button type="button" class="btn btn-elegant">Enter</button></a>
                </div>

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->   
           
           
      <%     
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
  

    



        
    </div>
 
 </section>
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
    <!-- Start your project here-->
    
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
