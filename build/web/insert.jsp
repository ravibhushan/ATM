<%-- 
    Document   : insert
    Created on : Jun 27, 2012, 10:57:05 PM
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
        <form action="insert" method="post">
            <h1>
                <center>
                    Enter the details of new member:<br>
                </center>
            </h1>
            <center>
                <h3><b> Name: &nbsp &nbsp &nbsp &nbsp <input type="text" name="t2"><br><br>
                Account no:<input type="text" name="t6"><br><br>
                Pin code: &nbsp &nbsp <input type="text" name="t1"><br><br>
                Amount:&nbsp&nbsp &nbsp <input type="text" name="t3"><br><br>
                State:&nbsp &nbsp &nbsp &nbsp <input type="text" name="t5"><br><br>
                City:&nbsp &nbsp &nbsp &nbsp &nbsp <input type="text" name="t4"><br><br>
                <input type="submit" value="submit"><br><br></b></h3>



            </center>

        </form>
    </body>
</html>
