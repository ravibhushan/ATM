-<%-- 
    Document   : welcome
    Created on : Jun 27, 2012, 8:41:43 AM
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
    <body class="background" text="white">
        <h1><center> Welcome To ATM Bank</center></h1>
        <form action="first.jsp" style="text-align: center;">
            <input type="submit" value="next">
        </form>
    </body>
</html>
