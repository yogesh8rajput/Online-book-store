<%-- 
    Document   : userlogin
    Created on : 08-Dec-2023, 5:45:12 pm
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login Page</title>
        
        <style>
            body{
                color: blue;
            }
        </style>
    </head>
    
    <body>
          <%
        String st=(String)session.getAttribute("USER");
        %>
          <p align="center" color=""> <% out.print("Welcome  "+st);
         %></p>
        <%
           try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        PreparedStatement pt=con.prepareStatement("select*from user where Name=? and Password=?");
        String uname=request.getParameter("na");
        String pass=request.getParameter("pw");
        pt.setString(1, uname);
        pt.setString(2, pass);
        ResultSet rs=pt.executeQuery();
        if (rs.isBeforeFirst())
        {
        session.setAttribute("USER", uname);
       // out.print("yes user "+uname);
        RequestDispatcher rd=request.getRequestDispatcher("userHome.jsp");
        rd.forward(request, response);
        }
        else{

  
        RequestDispatcher rd=request.getRequestDispatcher("login.html");
        rd.include(request, response);
          
        }
        }
        catch (Exception e)
        {
        out.print(e.getMessage());
        }
        
        %>
    </body>
</html>
