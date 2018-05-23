<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %> 
 <%@ page import="java.text.*" %> 
<%


String gp=request.getParameter("gp");
HttpSession session1=request.getSession();
String mail=(String)session.getAttribute("email");
   
Date ob=new Date();

SimpleDateFormat df = new SimpleDateFormat( "yyyyMMddhhmmss" );
String dtr=df.format(ob);
out.print(dtr);

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
 
 String id="";
 
 try
 {
 st=con.createStatement();
 rs=st.executeQuery("select id from users where email='"+mail+"'");
	while(rs.next())
	{
		id=rs.getString(1);
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
 



	
    //to get the content type information from JSP Request Header
    String contentType = request.getContentType();
    //here we are checking the content type is not equal to Null and
 //as well as the passed data from mulitpart/form-data is greater than or
 //equal to 0
    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
 {
        DataInputStream in = new DataInputStream(request.getInputStream());
        //we are taking the length of Content type data
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        //this loop converting the uploaded file into byte code
        while (totalBytesRead < formDataLength)
 {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
            }

        String file = new String(dataBytes);
        //for saving the file name
        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
 //out.println(saveFile);        
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
 //out.println(saveFile);        
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
        
 //out.println(saveFile);
int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1,contentType.length());
        int pos;
        //extracting the index of file 
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

        // creating a new file with the same name and writing the 
//content in new file
out.println(saveFile);

			
		saveFile=dtr+saveFile;
	
	

        FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/minor pro/uploads/"+saveFile);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();

        %><Br><table border="2"><tr><td><b>You have successfully
 upload the file by the name of:</b>
        <% out.println(saveFile); %></td></tr></table> <%
		
		try
 {
 st=con.createStatement();
 st.executeUpdate("insert into uploads values('"+mail+"','"+saveFile+"','"+ob+"','"+gp+"','"+id+"')");
	
 }
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
        }
	response.sendRedirect("afterlogin2.jsp?gp="+gp+"");
   	
	
 
%>
