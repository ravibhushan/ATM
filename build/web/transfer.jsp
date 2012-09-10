<%-- 
    Document   : transfer
    Created on : Jun 27, 2012, 7:15:05 PM
    Author     : ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h2> <center> <b>You selected to transfer the amount from your account to another</b></center> </h2>
        <% p=request.getParameter("m");%>
        <form action="transfer" method="post">
            <b> Enter the account your account number</b>
            <input type="text" name="n1">
            <br>
            <input type="hidden" name="w1" value=<%= p%>>
            <input type="submit" value="submit">
<a href="first.jsp"> Back </a>
        </form>
    </body>
</html>
