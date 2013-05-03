/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.controller;

import com.mlm.action.*;
import com.mlm.dbutility.ObjectCreator;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.View;

/**
 *
 * @author sai
 */
public class Controller extends HttpServlet {

    private final static String ACTION_MAPPING = "com/mlm/controller/ActionMapping.properties";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {
            String view=null;
            /* TODO output your page here. You may use following sample code. */
            if (session.getAttribute("sessionUserName") == null ||session.getAttribute("sessionUserName").equals("") ) {
                view="index.jsp";
            } else {
                String theAction = request.getParameter("Action");
                Properties map = new Properties();
                map.load(this.getClass().getClassLoader().getResourceAsStream(ACTION_MAPPING));
                String action_class = map.getProperty(theAction);
                Action action = (Action) ObjectCreator.createObject(action_class);
                //session.getAttribute("sessionMemid")
                request.setAttribute("cur_user", session.getAttribute("sessionMemid"));
                view = action.execute(request, response);
            }
            if (view != null) {
                    RequestDispatcher rd = request.getRequestDispatcher(view);
                    rd.forward(request, response);
                }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
