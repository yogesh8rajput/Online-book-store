<%-- 
    Document   : delete
    Created on : 09-Dec-2023, 9:18:05 pm
    Author     : hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
       
          <%
              int Book=Integer.parseInt(request.getParameter("id"));

      //  String Bid=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        //Statement st1=con.createStatement();
        PreparedStatement pt=con.prepareStatement("update from bookmanage where Bookid=?");
        // pt.setString(Integer.parseInt(request.getParameter(1, Book));
        int i=pt.executeUpdate();
        if(i>0)
        {%>
             <jsp:forward page="bookmanagement.jsp"></jsp:forward>
        <%
        }
        else{ 
           out.print("not deleted");
         %>
        <jsp:include page="a.html"></jsp:include>
        <%
}
}

        
         catch (Exception e)
        {
        out.print(e.getMessage());
        }
        %>
    </body>
</html>
