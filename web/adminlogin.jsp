<%-- 
    Document   : adminlogin
    Created on : 09-Dec-2023, 2:35:36 pm
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
      <style>
           body{ background: url("img/admin1.jpg");
                  background-repeat: no-repeat;                  
                 background-size: cover;
                   text-align: center;
                   color: white;
                font-size: 25px;
                margin-top: 40px;
          }
        h1
        {
               
            color: black;
            
            text-align: center;
            font-size: 40px;
        }
         a{
                text-decoration: none;
                color: black;
            }
            label{
                color: black;
            }
            input{
                font-size: 20px;
            }
            img{
                height:60px;
                width: 70px;
               
            }
            img:hover{
                
                background: black;
                color: white;s
            }
        </style>
    </head>
    <body>
        <div>
          </center><div>
             <h1>Admin 📚</h1>
    <form action="adminlogin.jsp">
        <label>Username:-</label>
        <input type="text" name="a_name"><br><br>
        <label>Password:-</label>
        <input type="password" name="a_pass"><br><br>
        <input type="submit" <img src="img/login.jpg" alt="alt"/>   
        <input type="reset" value="reset">
         
        
         </form>
        </div>
    </center>
    <br>
        </div>
        <a href="adminout"><img src="img/logout.jpg" alt="alt"/></a>
         
        <%
         
         try{
         
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        PreparedStatement pt=con.prepareStatement("select* from admin where Name=? and Password=?");
        String uname=request.getParameter("a_name");
        String pass=request.getParameter("a_pass");
        pt.setString(1, uname);
        pt.setString(2, pass);
        ResultSet rs=pt.executeQuery();
        if (rs.isBeforeFirst())
        {
        session.setAttribute("user", uname);
        RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
        rd.forward(request, response);
        
            }
            
         else
         {
          
        // out.print("wrong Enter name and password");
        
         }
         }
         catch(Exception e)
         {
            out.print(e.getMessage());
            }
        %>
        
   
    </body>
</html>
