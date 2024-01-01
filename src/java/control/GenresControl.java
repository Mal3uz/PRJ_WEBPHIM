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
@WebServlet(name="GenresControl", urlPatterns={"/genres"})
public class GenresControl extends HttpServlet {
   
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
         String genId = request.getParameter("gid");
           String indexP = request.getParameter("index");
            if(indexP == null)indexP = "1";
        int index = Integer.parseInt(indexP);
          DAO dao = new DAO();
           int totalMovies = dao.getPageMovieCountByGen(genId);
             int endpage = totalMovies/6;
             if(endpage % 6 != 0){
                 endpage++;
             }
          List<Movies> list = dao.pagingMoviesesByGenres(index,genId);
           Genres genName = dao.getGenresById(genId);
          List<Categories> category = dao.getAllCategorieses();
           List<Genres> g = dao.getAllGenres();
            //b2:set data to jsp
        request.setAttribute("gen", g);
        request.setAttribute("category", category);
        request.setAttribute("list", list);
        request.setAttribute("genName", genName);
        request.setAttribute("endP", endpage);
          request.setAttribute("check", index);
        request.getRequestDispatcher("Genres.jsp").forward(request, response);
         
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
