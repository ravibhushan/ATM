/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mandeep
 */
@WebServlet(name="transfer", urlPatterns={"/transfer"})
public class transfer extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.print("<html><head>");
           out.print("<style text='text/css'>");
           out.print(".background{");
           out.print("background-image:url('amts.jpg');");
           out.print("text-align:center;");
           out.print("background-repeat:no-repeat;background-size:100%;} ");
           out.print("h1{color:white;}");
           out.print("h2{color:white;}");
           out.print("h3{color:white;}");
           out.print("</style>");
           out.print("</head>");
           out.print("<body class='background'>");
            String p1=request.getParameter("w1");
            String p2=request.getParameter("n1");
           System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost:3306/ravi","root","ravi");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=sm.executeQuery("select * from atm");
       System.out.println("error");
     while(r.next())
       {
           if(p1.equals(r.getString(1)))
           {
              if(p2.equals(r.getString(6)))
              {
                   RequestDispatcher rb=request.getRequestDispatcher("transfer1.jsp?var="+p1+"");
               rb.forward(request, response);
              }
 else
     out.print("your account number and pin code do not match");
           }

        }
       out.print("<a href='first.jsp'> Back </a>");
                   out.print("</body></html>");

        }catch(SQLException e)
        {
            System.out.print(e.getMessage());
        }
        catch(ClassNotFoundException s)
        {
            System.out.print(s.getMessage());
        }finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
