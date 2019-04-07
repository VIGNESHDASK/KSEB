<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title> 
</head> 
<body> 
<%
   String houseno=request.getParameter("houseno.");
   String password=request.getParameter("psw");
 if((houseno.equals("anurag") && password.equals("jain")))
 {
 session.setAttribute("username",houseno); 
response.sendRedirect("home.jsp");
 }
 else
 response.sendRedirect("login.html"); 
%>
 </body> 
</html>