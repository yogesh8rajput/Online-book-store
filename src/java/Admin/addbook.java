/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Admin;

import com.mysql.cj.xdevapi.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
@WebServlet(name = "addbook", urlPatterns = {"/addbook"})
public class addbook extends HttpServlet {

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
            out.println("<title>Servlet addbook</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addbook at " + request.getContextPath() + "</h1>");
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
       
        PrintWriter pt=response.getWriter();
        response.setContentType("text/html");
        HttpSession session=request.getSession();
        pt.print("Welcome"+ session.getAttribute("user"));
       // int iid = Integer.parseInt(request.getParameter("book_id"));
         String bname=request.getParameter("book_name");
         String aut=request.getParameter("auther");
         String qu=request.getParameter("quantity");
         String pr=request.getParameter("price");
         
         try
         {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
             PreparedStatement pt2=con.prepareStatement("insert into bookmanage (Bookname,Auther,Quantity,Price) values(?,?,?,?)");
             pt2.setString(1, bname);
             pt2.setString(2, aut);
             pt2.setString(3, qu);
             pt2.setString(4, pr);
             int i=pt2.executeUpdate();
             if(i>0){
             JOptionPane.showMessageDialog(null, "Book Add Successfully");
             response.sendRedirect("Addbook.jsp");
             }
             
         }
         catch(Exception e)
         {
             pt.print(e.getMessage());
         }}

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
