<%-- 
    Document   : index
    Created on : 12-Dec-2023, 6:21:07 pm
    Author     : hp
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Index Page</title>
  <html>
    <head>
        <title>Index Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>

            *{
               
                margin: 0;
                padding: 0;
            }
            body{

                  background: url("img/ind.jpg");
                  background-repeat: no-repeat; 
                  
                 background-size: cover;
                  
                  
            }


           #main{
       
        display: flex;
        flex-direction: row;
        justify-content:space-between;
        height: 50px;

    }
             .logo{
        display: flex;
        align-items: center;
        margin: 5px 10px 5px 20px;
    } 
     .nav{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .nav a{
        font-weight: bold;
        text-decoration: none;
        color: white;
        display: flex;
        justify-content: space-between;
        margin-right: 25px;
        padding: 15px;
        font-size: 25px;
    }

    a:hover{
       color: black;
       background-color: white;
        padding: 10px 10px 10px 10px;
        border-radius:40%;
}

        </style>
    </head>
    <body>
  <div id="main">

        <div class="logo">
            <p style="font-size: 60px">E-BOOK</p>
            </div><br><br>
        
  <%
        String st=(String)session.getAttribute("USER");
        %>
        <div class="nav">
           
                <a href="index.html">Home</a>
                <a href="Signup.html">Registration</a>
                <a href="login.html">Login</a>
                <a href="a.html">About</a>
                   <a href="#">Contact</a>
                    <a href="index.html"><img src="./img/icon.png" height="40px"width="80px;" alt="alt"/></a>
        </div>
           

    </div>

          <br><br>
                        <span style="font-size: 50px">😊 Hello My Friends 😊<span>

        
    </body>
</html>
