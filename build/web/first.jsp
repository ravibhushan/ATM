<%-- 
    Document   : first
    Created on : Jun 27, 2012, 8:43:40 AM
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

    </head>
    <body class="background">
        <center> <h1> Enter Your pin code here</h1>
            <form action="second">
                <input type="text" name="t1">
                <input type="submit" value="submit">
            </form></center>
    </body>
</html>
