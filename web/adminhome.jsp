<%-- 
    Document   : adminhome
    Created on : 10-Dec-2023, 2:45:32 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
     <style>
          body{ background: url("img/bck.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-decoration: none;
                text-align: center;
              
                color: black;
                font-size: 45px;
                margin-top: 40px;
                margin-left: 750px;
                margin-top: 150px;
          }
            a{
               text-decoration: none;
               color: orange;
               
            }
           
              
        </style>
        
    </head>
    <body>
          <%
        String st=(String)session.getAttribute("user");
        %>
          <p align="center"> <% out.print("Welcome  "+st);
         %></p>
        <a href="Addbook.jsp">Add Book</a><br><br>
         <a href="showalluser.jsp">Show All Data </a><br><br>
         <a href="showfeedback.jsp">Feedback</a><br><br>
          <a href="bookmanagement.jsp">Book Management</a><br><br>
          <a href="adminlogin.jsp">Log out</a>
        
        
    </body>
</html>
