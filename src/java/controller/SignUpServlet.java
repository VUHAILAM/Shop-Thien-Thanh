/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBCustomer;

/**
 *
 * @author ADMIN
 */
public class SignUpServlet extends HttpServlet {

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
           DBCustomer dbc = new DBCustomer();
           
          String acc = request.getParameter("account").trim();
          if(dbc.isExistedCus(acc)) {
            request.setAttribute("error1", acc + " is dulicapted, Please try agian!");
            RequestDispatcher dis = request.getRequestDispatcher("SignUp.jsp");
            dis.forward(request, response);
            return;
           }
          String pass = request.getParameter("mk").trim();
          String pass1 = request.getParameter("mk1").trim();
          if(!pass.equals(pass1)) {
            request.setAttribute("error2", "password 2 incorrect, Please try agian!");
            RequestDispatcher dis = request.getRequestDispatcher("SignUp.jsp");
            dis.forward(request, response);
            return;
          }
          String name = request.getParameter("fullname").trim();
          String email = request.getParameter("email").trim();
          String phone = request.getParameter("phone").trim();
          String job = request.getParameter("job").trim();
          String other = request.getParameter("other").trim();
          
          dbc.insert(acc, pass, name, email, phone, job, other);
          response.sendRedirect("Login.jsp");
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
        processRequest(request, response);
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
