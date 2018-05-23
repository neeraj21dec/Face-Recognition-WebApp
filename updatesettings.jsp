<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%

Connection con=null;
Statement st=null;
ResultSet rs=null;

   HttpSession session1=request.getSession();
String mail=(String)session.getAttribute("email");
   
   
   String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
   
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
 st.executeUpdate("update users set name='"+name+"',pwd='"+pwd+"' where email='"+mail+"'");
 
   
 }
   catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
                                                                                       
response.sendRedirect("settings.jsp");
   
%>
