<%-- 
    Document   : view
    Created on : Jun 27, 2012, 11:15:55 PM
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
    </head>
    <body class="background" text="white">
        <center>   <h1> Following is the table of all users and their information</h1>
            <table>
                <tr><th><h2> Pin code &nbsp &nbsp</h2></th><th><h2>name &nbsp</h2></th><th><h2>amount</h2></th><th><h2>city</h2></th><th><h2>state</h2></th><th><h2>account number</h2></th></tr></h2><h3>
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

        %>
        <tr><td><h3><%= r.getString(1)%></h3></td><td><h3><%= r.getString(2)%></h3></td><td><h3><%= r.getString(3)%></h3></td><td><h3><%= r.getString(4)%></h3></td><td><h3><%= r.getString(5)%></h3></td><td><h3><%= r.getString(6)%></h3></td></tr>
        <%
     }
       %>
                </h3></table>
            <a href="first.jsp"> Back </a>
        </center>
    </body>
</html>
