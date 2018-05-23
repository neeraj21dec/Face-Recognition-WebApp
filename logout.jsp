<%
HttpSession session1=request.getSession();
session1.invalidate();

   
   response.sendRedirect("front.jsp");
   
%>