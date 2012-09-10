<%-- 
    Document   : success
    Created on : Jun 27, 2012, 8:58:15 AM
    Author     : ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="test/css">
            .links { color: white;text-decoration: none;cursor: pointer;}
        </style>
        <%! String u;%>
        
    </head>
    <body class="background" text="white">
        <% u=request.getParameter("var");%>
        <h1>Welcome!!!</h1>
        <h2> Click on the task you want to perform</h2>
        <h3>
           &nbsp &nbsp <a href="widrawl.jsp ?var="<%= u%>> 1. Amount Withdrawl</a><br><br>
            <a href="ckeck.jsp" class="links"> 2. Balance enquiry</a><br><br>
            <a href="change.jsp" class="links"> &nbsp &nbsp 3. Change pin code</a><br><br>
            <a href="mini.jsp" class="links">4. profile detail</a><br><br>
            <a href="transfer.jsp" class="links">5. Cash transfer</a><br><br>
        </h3>
        <form action="" style="text-align: center;">
        your pin is <input type="text" name="w1" value=<%= u%>>
        </form>
    </body>
</html>
