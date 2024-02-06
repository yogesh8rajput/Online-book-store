<%-- 
    Document   : userHome
    Created on : 09-Dec-2023, 8:23:44 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
    </head>
    <body> <style>
            body{ background: url("img/IMG_20240108_223351.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-align: center;
                text-decoration: none;   
                font-size: 35px;
                margin-top: 60px;
                color: yellow;
            }
             a{
               text-decoration: none;
               color:white;  
            }
            a:hover{
                color: yellow;
            }
            
        </style>
        
        
         <body>
                <%
       // String st=(String)session.getAttribute("USER");
       
         //   out.print("Welcome  "+st);
         %>
               
        <a href="userBookDeatails.jsp"> Book Details</a><br><br>
        <a href="profile.jsp">Profile </a><br><br>
          <a href="Feedback.jsp"> Feedback</a><br><br>
          <a href="index.html">Log out</a>
          
          <br> <br>
             <%
        String st=(String)session.getAttribute("USER");
        %>
          <p align="center" color=""> <% out.print("Welcome  "+st);
         %></p>
    </body>
</html>
