<%-- 
    Document   : Addbook
    Created on : 09-Dec-2023, 11:05:27 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page</title>
     <style>
          body{ background: url("img/add.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-decoration: none;
                  text-align: center;
                 font-size: 25px; 
              }
                 
              label{
                  font-size: 30px;
            }
            input:hover{
                color:white;
                background-color: black;
                
            }
             a{
                text-decoration: none;
                color: black;
            }
            
        </style>
    </head>
    <body>
        <h1>  <%
        String st=(String)session.getAttribute("user");
        %>
          <p align="center"> <% out.print("Welcome  "+st);
         %></p></h1>
        <h1>📩📩📩📩?</h1>
        <form action="addbook" method="post">
            <label>Book id</label><br>
            <input type="text" name="book_id"placeholder="Enter Book id"><br>
            <label>Book Name</label><br>
            <input type="text" name="book_name"placeholder="Enter Book Name"><br>
            <label>Auther</label><br>
            <input type="text" name="auther"placeholder="Enter Book Auther"><br>
            <label>Quantity</label><br>
            <input type="text" name="quantity"placeholder="Enter Book Quantity"><br>
            <label>Price</label><br>
            <input type="text" name="price"placeholder="Enter Book Price"><br><br>
            
            <input value="Submit" type="submit">
            <input value="Clear" type="reset"><br><br>
             <span>Back to your home <a href="adminhome.jsp">Click here</a><br><br><span>
            
        </form>
        
    </body>
</html>
