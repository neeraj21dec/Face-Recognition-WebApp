<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>




<%

Connection con=null;
Statement st=null;
ResultSet rs=null;

  String name=request.getParameter("name");
  String mail=request.getParameter("mail");
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

 int last_id=0;

try
 {
 st=con.createStatement();
 rs=st.executeQuery("select * from id_allotted");
	while(rs.next())
	{
		last_id=rs.getInt(1);
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
 
 int id=last_id+1;
 
    
     try
 {
 st=con.createStatement();
  st.executeUpdate("insert into users values('"+name+"','"+mail+"','"+pwd+"',"+id+")");
  
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
   
    try
 {
 st=con.createStatement();
 st.executeUpdate("insert into id_allotted values("+id+")");
	
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
 
 try
 {
 st=con.createStatement();
 st.executeUpdate("insert into selfpics values("+id+",'null','null','null','null','null')");
	
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
 
 try
 {
 st=con.createStatement();
 st.executeUpdate("insert into userdetails values('null','null','null','null','null','"+id+"')");
	
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
  
   response.sendRedirect("selfpics.jsp?id="+id+"&mssg=");
   
   
%>
    
    
    
    