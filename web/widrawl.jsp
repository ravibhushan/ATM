<%-- 
    Document   : widrawl
    Created on : Jun 27, 2012, 10:12:05 AM
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
    <body class="background">
         <% p=request.getParameter("m");%>
       
        <center>
        <h1>You want to widthraw money <br> Enter your amount here<br></h1>
         <form action="widrawl" method="post">
        <input type="hidden" name="w1" value=<%= p%>>
        <input type="text" name="w2">
        <input type="submit" value="submit">
        <a href="first.jsp"> Back </a>
          </form>
        </center>
    </body>
</html>
