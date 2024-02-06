<%-- 
    Document   : profile
    Created on : 14-Dec-2023, 10:25:43 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
  
         <style>
              body{ background: url("img/white.webp");
                    text-align: center; 
                     background-repeat: no-repeat;                  
                
                    font-size: 30px;
                text-decoration: none;
                  
              }
              h1{
                  color: wheat
                  
              }
              h1hover{
                  color:blueviolet;
                  font-family: monospace;
              }
                  h2{
                  color: wheat
                  
              }
              h2hover{
                  color:black;
                  font-family: monospace;
                  font-size: 60px;
              }
               a{
                text-decoration: none;
                color: black;
            }
        </style>
    
    <body>
        
          
        <h1>It is The E-Book </h1><br><br>
        <h2>  <%
        String st=(String)session.getAttribute("USER");
        %>
        <% out.print("Welcome  "+st);
        %></h2>
        
        
                 
        <div>
         
        </div>
        <br><br>
     <span>Back to your home <a href="userHome.jsp"> 📩 Click here</a><br><br><span>
        
    </body>
</html>
