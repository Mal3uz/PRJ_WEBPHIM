/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Categories;
import entity.Genres;
import entity.Movies;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author DELL
 */
@WebServlet(name = "FilterMoviesControl", urlPatterns = {"/filterMovies"})
public class FilterMoviesControl extends HttpServlet {

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
        String topStr = request.getParameter("top");
        String statusStr = request.getParameter("status");
        String[] genresStr = request.getParameterValues("genres");
        String categoryStr = request.getParameter("category");
        String yearStr = request.getParameter("yeartxt");

        String indexP = request.getParameter("index");
        if (indexP == null) {
            indexP = "1";
        }
        int index = Integer.parseInt(indexP);

        int top = 0;
        int categoryId = 0;
        int[] genresId = null;
        int yearId = 0;

        try {
            if (topStr != null && !topStr.isEmpty()) {
                top = Integer.parseInt(topStr);
            }
            if (genresStr != null && genresStr.length > 0) {
                genresId = Arrays.stream(genresStr).mapToInt(Integer::parseInt).toArray();
            }
            if (categoryStr != null && !categoryStr.isEmpty()) {
                categoryId = Integer.parseInt(categoryStr);
            }
            if (yearStr != null && !yearStr.isEmpty()) {
                yearId = Integer.parseInt(yearStr);
            }

            if (statusStr == null) {
                statusStr = null;
            }

        } catch (NumberFormatException e) {
            // Handle the case where a parameter is not a valid integer
        }

        //b1:get data from dao
        DAO dao = new DAO();
        List<Genres> g = dao.getAllGenres();
        List<Categories> category = dao.getAllCategorieses();
        List<Movies> filterList = dao.getMoviesByCriteria(top, statusStr, genresId, categoryId, yearId,index);

        int totalMovies = filterList.size();
        int endpage = totalMovies / 9;
        if (endpage % 9 != 0) {
            endpage++;
        }
        //b2:set data to jsp
        request.setAttribute("gen", g);
        request.setAttribute("checktop", topStr);
        request.setAttribute("checkstatus", statusStr);
        request.setAttribute("checkgenres", genresStr);
        request.setAttribute("checkcategory", categoryStr);
        request.setAttribute("checkyear", yearStr);
        request.setAttribute("categoryId", categoryId);
        request.setAttribute("category", category);
        request.setAttribute("flist", filterList);
        request.setAttribute("endP", endpage);
        request.setAttribute("check", index);
        request.getRequestDispatcher("Filter.jsp").forward(request, response);
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
