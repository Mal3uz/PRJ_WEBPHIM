/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Categories;
import entity.Episode;
import entity.Genres;
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
@WebServlet(name = "WatchControl", urlPatterns = {"/watch"})
public class WatchControl extends HttpServlet {

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
        //b1: get parameter
        String movieId = request.getParameter("mid");
        String cateId = request.getParameter("cid");
         String genId = request.getParameter("gid");
        String episodeId = request.getParameter("eid");
        DAO dao = new DAO();
        //b2:get data dao
        Movies detailMovie = dao.getMovieById(movieId);
        List<Categories> category = dao.getAllCategorieses();
        Categories cateName = dao.getCategoriesesById(cateId);
        List<Genres> g = dao.getAllGenres();
        Genres genName = dao.getGenresById(genId);
        List<Episode> listE = dao.getEpisodeByMovie(movieId);
        Episode episode = dao.getEpisodeById(movieId, episodeId);
         
        //b2:set data to jsp
        request.setAttribute("detailMovie", detailMovie);
        request.setAttribute("category", category);
        request.setAttribute("cateName", cateName);
        request.setAttribute("gen", g);
        request.setAttribute("genName", genName);
        request.setAttribute("listE", listE);
        request.setAttribute("episode", episode);
        request.getRequestDispatcher("Watch.jsp").forward(request, response);
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
