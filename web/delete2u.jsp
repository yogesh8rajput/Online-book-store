<%-- 
    Document   : delete2u
    Created on : 16-Dec-2023, 5:28:58 pm
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete@u Page</title>
    </head>
    <body>
           <%
        String Name=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        //Statement st1=con.createStatement();
        PreparedStatement pt=con.prepareStatement("delete from feedback where Name=?");
        pt.setString(1, Name);
        int i=pt.executeUpdate();
        if(i>0)
        {%>
        <jsp:forward page="showfeedback.jsp"></jsp:forward>
        <%
        }
        else{ 
           out.print("not deleted");
         %>
         <jsp:include page="Adminhome.html"></jsp:include>
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
