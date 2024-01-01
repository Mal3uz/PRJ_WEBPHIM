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
import java.util.List;

/**
 *
 * @author DELL
 */
@WebServlet(name="UpdateMovieControl", urlPatterns={"/poster/updateMovies"})
public class UpdateMovieControl extends HttpServlet {
   
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
        String midtxt = request.getParameter("mid");
        DAO dao = new DAO();
        List<Categories> category = dao.getAllCategorieses();
        List<Categories> cat = dao.getCategoriesesByMovieId(midtxt);
        List<Genres> g = dao.getAllGenres();
        List<Genres>genr = dao.getGenresByMovieId(midtxt);

        Movies mv = dao.getMovieById(midtxt);
        request.setAttribute("listC", category);
        request.setAttribute("listG", g);
        request.setAttribute("genr", genr);
        request.setAttribute("cat", cat);
        request.setAttribute("mv", mv);
        request.getRequestDispatcher("../admin_dashboard/MoviesAdd.jsp").forward(request, response);
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
        int mid = Integer.parseInt(request.getParameter("idtxt"));
        String titletxt = request.getParameter("titletxt");
        String origintxt = request.getParameter("origintxt");
        String descriptiontxt = request.getParameter("descriptiontxt");
        int year = Integer.parseInt(request.getParameter("yeartxt"));
        int duration = Integer.parseInt(request.getParameter("durationtxt"));
        int hot = Integer.parseInt(request.getParameter("hottxt"));
        int episodenum = Integer.parseInt(request.getParameter("episodenum"));
        int top = Integer.parseInt(request.getParameter("toptxt"));
        String statustxt = request.getParameter("statustxt");
        String[] categorytxt = request.getParameterValues("categorytxt");
        String[] genrestxt = request.getParameterValues("genrestxt");
        String imagetxt = request.getParameter("imagetxt");
  
        DAO dao = new DAO();
        dao.updateMovie(mid, titletxt, origintxt, descriptiontxt, year, statustxt, duration, imagetxt, hot, episodenum, top);
        dao.deleteMovieCategory(mid);
        dao.InsertMovieCategory(mid, categorytxt);
        dao.deleteMovieGenre(mid);
        dao.InsertMovieGenres(mid, genrestxt);
        response.sendRedirect("posterMovie");

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
