<%-- 
    Document   : uu
    Created on : 23-Dec-2023, 10:29:01 pm
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Page</title>
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
        
        <%
           // tring id=request.getParameter("id");
          //  addbook a=addbook.getRecordByid(id);
           // update u=update.getRecordByid(id);
        %>
        <%
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
             String id=request.getParameter("id");
            PreparedStatement pt=con.prepareStatement("select * from bookmanage where Bookid=?");
            pt.setString(1, id);
            ResultSet rs=pt.executeQuery();
            
            while(rs.next()){               
        %>
        
        <form action="update" method="post">
            <label>Book id</label><br>
            <input type="hidden" name="id"value="<%out.print(id);%>"><br>
            <label>Book Name</label><br>
            <input type="text" name="book_name"value="<%= rs.getString(2)%>"><br>
            <label>Auther</label><br>
            <input type="text" name="auther"value="<%=rs.getString(3)%>" ><br>
            <label>Quantity</label><br>
            <input type="text" name="quantity"value="<%=rs.getString(4)%>"><br>
            <label>Price</label><br>
            <input type="text" name="price"value="<%=rs.getString(5)%>"><br><br>
            
            <input value="update" type="submit">
            
             <span>Back to your home <a href="adminhome.jsp">Click here</a><br><br><span>
            
        </form>

        <%
            }
            }
                catch(Exception e)
            {  
                out.print(e.getMessage());

                    }
        
        %>
    </body>
</html>
