<%-- 
    Document   : userBookDeatails
    Created on : 10-Dec-2023, 2:56:52 pm
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details Book Page</title>
    </head>
    <style>
         body{ background: url("img/tablebg.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-align: center;
                   
                font-size: 25px;
                margin-top: 40px;
            }
            table{
                 text-align: center;
                 margin-left: 330px;
            }
            a{
                text-decoration: none;
                color: black;
            }
            img{
                height:30px;
                width:70px;
            }
    </style>
    <body>
         <%
        String st=(String)session.getAttribute("USER");
        %>
          <h1> <% out.print("Welcome  "+st);
         %></h1>
         
         <a href="o.jsp"><img src="img/order.png" alt="alt"/> </a>
         Cart=<%=(Integer)session.getAttribute("count") %>
        <table border="1" color="blue">
            <th>Book_Id</th>
              <th>Book_Name</th>
              <th>Auther</th>
               <th>Quantity</th>
                <th>Price</th>
                <th>Action  </th>
               
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
              
                 <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><a href=ad.jsp?id=<%=rs.getString(1)%>><img src="img/button.webp" alt="alt"/> </a></td> 
                   </tr>
            
          <%  }
            
            }
            catch(Exception e)
            { 
            out.print(e.getMessage());
            }
            %>
                
        </table>
            <br>
            <span>Back to your home <a href="userHome.jsp"> 📩 Click here</a><br><br><span>
        
    </body>
</html>
