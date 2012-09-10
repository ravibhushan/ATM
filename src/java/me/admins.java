/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;

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
@WebServlet(name="admins", urlPatterns={"/admins"})
public class admins extends HttpServlet {
   
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
           out.print("<body class='background'><h1>");
             String u=request.getParameter("var");
           out.print("<h1>Welcome!!!</h1>");
           out.print("<h2> Click on the task you want...<h2>");
           out.print("<h3><br>1. <a href='insert.jsp?m="+u+"'> Add New Member</a><br>");
           out.print("<br>2. <a href='view.jsp?m="+u+"'> view detail of all</a><br>");
          out.print("<br><a href='first.jsp'>Back</a>");
          out.print("</h1></body></html>");

        } finally { 
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
