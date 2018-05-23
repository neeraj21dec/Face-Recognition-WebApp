<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%
   
   
   String mail=request.getParameter("mail");
   String pwd=request.getParameter("pwd");

   
   
   
   
   
Connection con=null;
Statement st=null;
ResultSet rs=null;

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
 rs=st.executeQuery("select * from admins where mail='"+mail+"' and pwd='"+pwd+"'");
       
       if(rs.next())
       
   {   response.sendRedirect("admin.jsp");
   
      
HttpSession session1=request.getSession();
session1.setAttribute("email",mail);
   }
   
       else
   response.sendRedirect("admin login.jsp");
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
