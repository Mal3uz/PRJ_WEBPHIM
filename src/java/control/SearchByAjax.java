/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Movies;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SearchByAjax", urlPatterns = {"/searchAjax"})
public class SearchByAjax extends HttpServlet {

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
        String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        List<Movies> listS = dao.searchByName(txtSearch);
        PrintWriter out = response.getWriter();
        for (Movies o : listS) {
            out.println("<div style=\"display: flex; width: 528px;margin: 5px 0;\">\n"
                    + "                                                <img style=\"width: auto; height: 100px;\" src=\"" +o.getImg()+"\" >\n"
                    + "                                                <div style=\"display: flex; flex-direction: column; max-height: 100px;overflow: hidden; text-overflow: ellipsis;\">\n"
                    + "                                                    <h5 style=\"text-align: justify;\"><a href=\"detail?mid=1\" style=\"padding: 5px;white-space: nowrap;\">" +o.getTitle()+"</a></h5>\n"
                    + "                                                    <p style=\"text-align: justify;padding-left: 5px;\">"+o.getDescription()+"</p>\n"
                    + "                                                </div>\n"
                    + "                                            </div>");
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
