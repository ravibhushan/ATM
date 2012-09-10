<%-- 
    Document   : change
    Created on : Jun 27, 2012, 10:15:13 AM
    Author     : aditya
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
        <%! String u;%>
    </head>
    <body class="background" text="white">
        <h2><center>
        <% u=request.getParameter("m");%>
         <form action="change" method="post">
         Enter your old password<input type="text" name="w2"><br><br>
         Enter your new password<input type="text" name="w3"><br><br>
         <input type="hidden" name="w1" value=<%= u%>>
         <input type="submit" value="next">
        <a href="first.jsp"> Back </a>
        </form>
            </center></h2>
    </body>
</html>
