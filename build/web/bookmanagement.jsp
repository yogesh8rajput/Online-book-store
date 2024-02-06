<%-- 
    Document   : bookmanagement
    Created on : 09-Dec-2023, 8:42:21 pm
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmanagement Page</title>
        <style>
             body{ background: url("img/table2.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-decoration: none;
                  text-align: center;
                 font-size: 25px; 
              }
                   table{
                 text-align: center;
                 margin-left: 350px;
                 font-size: 25px;
            }
             a{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
        <h1>Book Management</h1>
        <%
        String st=(String)session.getAttribute("user");
        %>
          <p align="center"> <% out.print("Welcome  "+st);
         %></p>
        <table border="1">
            <th>Book_Id</th>
            <th>Book_Name</th>
              <th>Auther</th>
               <th>Quantity</th>
                <th>Price</th>
                <th>Delete</th>
                <th>Update</th>
            <%
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
            Statement st1=con.createStatement();
           ResultSet rs = st1.executeQuery("Select*from bookmanage");
            while(rs.next())
            {%>
                <tr>
                 <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
                 <td><%=rs.getString(4)%></td>
                 <td><%=rs.getString(5)%></td>
                  <td><a href="delete.jsp?id=<%=rs.getString(1)%>">Delete </td> 
                  <td><a href="uu.jsp?id=<%=rs.getString(1)%>">Update </td> </tr>
            
          <%  }
            
            }
            catch(Exception e)
            {
            out.print(e.getMessage());
            }
            %>
                
        </table>
          <br>
          <span>Back to your home <a href="adminhome.jsp">Click 📩 here</a><br><br><span>
    </body>
</html>
