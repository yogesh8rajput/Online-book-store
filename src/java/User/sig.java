/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package User;

import com.mysql.cj.xdevapi.Result;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
@WebServlet(name = "sig", urlPatterns = {"/sig"})
public class sig extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sig</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sig at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       PrintWriter pw=response.getWriter();
       response.setContentType("text/html");
        String na=request.getParameter("name");
          String pwd=request.getParameter("pass");
          String user=request.getParameter("uname");         
          String adr=request.getParameter("add");
          String mail=request.getParameter("gmail");
       long num=Long.parseLong(request.getParameter("mobile"));
       try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
         
          PreparedStatement pt=con.prepareStatement("select*from book where Username=?");
           pt.setString(1, user);
           
           ResultSet rs=pt.executeQuery();
           if(rs.isBeforeFirst())
           {    
          response.sendRedirect("Signup.html");
          pw.print("Already");
           }
           else{
            PreparedStatement    pt1 = con.prepareStatement("insert into book values(?,?,?,?,?,?)");
           pt1.setString(1, na);
           pt1.setString(2, pwd);
           pt1.setString(3, user);
           pt1.setLong(4, num);
           pt1.setString(5, adr);
           pt1.setString(6, mail);
          int i=pt1.executeUpdate();
          if(i>0)
          {
           JOptionPane.showMessageDialog(null, "Success");
           response.sendRedirect("login.html");
           }
           }
          
           
       
       }
       catch(Exception e)
           
       {
            pw.print(e.getMessage());
       
       }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
