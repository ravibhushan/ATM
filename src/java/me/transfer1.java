/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mandeep
 */
@WebServlet(name="transfer1", urlPatterns={"/transfer1"})
public class transfer1 extends HttpServlet {
   
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
            String p2=request.getParameter("e1");
            int p3=Integer.parseInt(request.getParameter("e2"));
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
              int k=Integer.parseInt(r.getString(3));
              k=k-p3;
              int i=sm.executeUpdate("update atm set amount='"+k+"' where pin='"+p1+"'");
              if(i==1)
              {
                  out.print("<br><h3><b><center>the amount in your account is:"+k+"</b></center></h3>");
              }
              else
                out.print("transfer failssss");
              r=sm.executeQuery("select * from atm");
              while(r.next())
              {
                  if(p2.equals(r.getString(6)))
                  {
                      int l=Integer.parseInt(r.getString(3));
                      l=l+p3;
                      int f=sm.executeUpdate("update atm set amount='"+l+"' where accno='"+p2+"'");
                      if(f==1)
                      {
                          out.print("<br> <h3> <center>The amount in another account is:"+l+"</center></h3>");
                      }
                       else
                          out.print("the transfer fails");
                  }
              }
           }
        }
       out.print("<a href='first.jsp'> Back </a>");
       out.print("</body></html>");
        }
        catch(SQLException e)
        {
            System.out.print(e.getMessage());
        }
        catch(ClassNotFoundException s)
        {
            System.out.print(s.getMessage());
        }
        finally {
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
