<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>




<%

Connection con=null;
Statement st=null;
ResultSet rs=null;

  String branch=request.getParameter("branch");
  String roll=request.getParameter("roll");
  String pass=request.getParameter("pass");
  String mob=request.getParameter("mob");
  String add=request.getParameter("add");
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

 
 
    
     try
 {
 st=con.createStatement();
  st.executeUpdate("update userdetails set branch='"+branch+"' , roll_no='"+roll+"' , pass_year='"+pass+"' , mob_no='"+mob+"' , address='"+add+"' where id="+id+"");
  
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
   
    
  response.sendRedirect("regsuccess.jsp");
   
   
%>
    
    
    
    