<%-- 
    Document   : check
    Created on : Jun 27, 2012, 10:14:27 AM
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
        <%! String u;%>
    </head>
    <body class="background" text="white">
         <% u=request.getParameter("m");%>
         <form action="check">
        <input type="hidden" name="w1" value=<%= u%>>
        <b><h3>Enter Your pin code here again</h3></b>
        <input type="text" name="w2">
        <input type="submit" value="next">
        </form>
        <h1><a href="first.jsp"> Back </a></h1>
    </body>
</html>
