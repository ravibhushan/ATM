<%-- 
    Document   : mini
    Created on : Jun 27, 2012, 10:22:08 PM
    Author     : ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .background
            {
                background-image:url("amts.jpg");
                background-repeat:no-repeat;
                text-align:center;
                background-size:100%;

            }
            h1
            {
                color:gold;
            }
        </style>
         <%! String p;%>
    </head>
    <body class="background" text="white">
        <% p=request.getParameter("m");%>
        <h2> <center> Here mini statement will show you your account details<br>
                Your account detail is as follows:<br></center>
        <%
         
           System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost:3306/ravi","root","ravi");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=sm.executeQuery("select * from atm");
       System.out.println("error");
     while(r.next())
       {
           if(p.equals(r.getString(1)))

               {

        %>
      &nbsp &nbsp Name  : <input type="text" namw="t1" value=<%= r.getString(2)%>><br><br>
       Account  :  <input type="text" namw="t1" value=<%= r.getString(6)%>><br><br>
         Balance  : <input type="text" namw="t1" value=<%= r.getString(3)%>><br><br>
          &nbsp &nbsp City  : <input type="text" namw="t1" value=<%= r.getString(4)%>><br><br>
          &nbsp State  : <input type="text" namw="t1" value=<%= r.getString(5)%>><br><br>
           <%
           }
           }
           %>
           <a href="first.jsp"> Back </a>
        </h2>
    </body>
</html>
