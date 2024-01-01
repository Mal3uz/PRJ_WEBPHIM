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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author DELL
 */
public class HomeControl extends HttpServlet {

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
        
          String topviewsstr = request.getParameter("topview");
          System.out.println(topviewsstr);
        //b1:get data from dao
        DAO dao = new DAO();
        List<Movies> hotMovies = dao.getMoviesesByHot();
//        List<Movies> trendingMovies = dao.getMoviesByCategory("1");
//        List<Movies> popularMovies = dao.getMoviesByCategory("2");
//        List<Movies> recentlyMovies = dao.getMoviesByCategory("3");
//        List<Movies> liveMovies = dao.getMoviesByCategory("4");
//        List<Movies> topMovies = dao.getMoviesByCategory("5");
//        List<Movies> trailerMovies = dao.getMoviesByCategory("6");
        List<Genres> g = dao.getAllGenres();
        List<Categories> category = dao.getAllCategorieses();
        Map<Categories, List<Movies>> categoryMoviesMap = new LinkedHashMap<>();
        //dung linkHashMap vi no giu nguyen cac phan tu duoc them vao
        for (Categories c : category) {
            List<Movies> movies = dao.getMoviesByCategory(Integer.toString(c.getId()));
            categoryMoviesMap.put(c, movies);
        }
        //b2:set data to jsp
//        request.setAttribute("trendingMovies", trendingMovies);
//        request.setAttribute("popularMovies", popularMovies);
//        request.setAttribute("recentlyMovies", recentlyMovies);
//        request.setAttribute("liveMovies", liveMovies);
//        request.setAttribute("topMovies", topMovies);
//        request.setAttribute("trailerMovies", trailerMovies);
        request.setAttribute("gen", g);
        request.setAttribute("categoryMoviesMap", categoryMoviesMap);
        request.setAttribute("hotMovies", hotMovies);
        request.setAttribute("category", category);
        request.setAttribute("dao", dao);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
