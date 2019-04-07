<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%> 
<html> 
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
  <%  
   Int houseno=Integer.parseInt(request.getParameter("houseno."));
   String email=request.getParameter("email");
   String password=request.getParameter("psw");
   String password1=request.getParameter("psw1");
   try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection com=DriverManager.getConnection("");
   Statement name=com.CreateStatement("");
   int a=name.excuteUpdate("insert into table values("+houseno+",'"+email+"','"+password+"','"+password1+"')");
   if(a==1)
   {
       out.println("registration success");
       else
       {
           out.println("registration failed");
               }
   }catch(Exception c){}
   con.close();
       
   }
   
   
   
   }
   
  
  
  
  
  %>
</body> 
</html>