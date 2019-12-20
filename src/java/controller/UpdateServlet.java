/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DBCustomer;

/**
 *
 * @author ADMIN
 */
public class UpdateServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession(true);
        Customer a = (Customer) session.getAttribute("cus");
        String name = request.getParameter("fullname").trim();
        String email = request.getParameter("email").trim();
        String phone = request.getParameter("phone").trim();
        String job = request.getParameter("job").trim();
        String other = request.getParameter("other").trim();
        DBCustomer dbc = new DBCustomer();
        int x = dbc.Update(a.getAccount(), name, email, phone, job, other);
        if (x == 0) {
            request.setAttribute("mess", "Update not succesfully");
            RequestDispatcher dis = request.getRequestDispatcher("AccountDetail.jsp");
            dis.forward(request, response);
        } else {
            response.sendRedirect("AccountDetail.jsp");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            HttpSession session = request.getSession(true);
            String username = request.getParameter("username").trim();
            String name = request.getParameter("fullname").trim();
            String email = request.getParameter("email").trim();
            String phone = request.getParameter("phone").trim();
            String job = request.getParameter("job").trim();
            String other = request.getParameter("other").trim();
            DBCustomer dbc = new DBCustomer();
            int x = dbc.Update(username, name, email, phone, job, other);
          
            response.sendRedirect("AccountDetail.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(UpdateServlet.class.getName()).log(Level.SEVERE, null, ex);
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
