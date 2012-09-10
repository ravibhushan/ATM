<%-- 
    Document   : transfer1
    Created on : Jun 27, 2012, 7:35:18 PM
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
    <body class="background" text="white" hight="30">
        <% p=request.getParameter("var");%>
        <form action="transfer1">
            <b>Enter the account in which you want to transfer</b>
            <input type="text" name="e1">
            <br><br>
            <b> Enter the amount of money you want to transfer</b>
            <input type="text" name="e2">
            <br>
          
        <input type="hidden" name="w1" value=<%= p%>>
          <input type="submit" value="submit">
          <a href="first.jsp"> Back </a>
        </form>
    </body>
</html>
