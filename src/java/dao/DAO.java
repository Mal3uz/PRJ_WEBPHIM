/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Categories;
import entity.Episode;
import entity.Genres;
import entity.Movies;
import entity.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Movies m1 
    public List<Movies> getAllMovies() {
        List<Movies> list = new ArrayList<>();

        String query = "select * from movies_he176244";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Movies> getMoviesByCategory(String categoryId) {
        List<Movies> list = new ArrayList<>();

        String query = "select * from movies_he176244 m\n"
                + "join movie_categories_he176244 mc on m.id = mc.movie_id\n"
                + "where mc.category_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryId); // Truyền tham số vào câu truy vấn
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Movies> getMoviesByGenres(String genId) {
        List<Movies> list = new ArrayList<>();

        String query = "select * from movies_he176244 m\n"
                + "join movie_genres_he176244 mg on m.id = mg.movie_id\n"
                + "where mg.genre_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, genId); // Truyền tham số vào câu truy vấn
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Movies> getMoviesesByHot() {
        List<Movies> listHot = new ArrayList<>();
        String query = "select * from movies_he176244\n"
                + "where hot = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                listHot.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return listHot;
    }

    public Movies getMovieById(String movideId) {
        String query = "select * from movies_he176244\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movideId);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<Movies> getMoviesByTopView(String topview) {
        List<Movies> list = new ArrayList<>();

        String query = "select * from movies_he176244\n"
                + "where topview = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, topview); // Truyền tham số vào câu truy vấn
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Movies> getMoviesByCriteria(int top, String status, int[] genres, int category, int year , int index) {
        List<Movies> filterMovies = new ArrayList<>();

        StringBuilder query = new StringBuilder("SELECT * FROM movies_he176244 m");

        if (top > 0) {
            query.append(" WHERE m.topview = ?");
        } else {
            query.append(" WHERE 1 = 1");
        }

        if (status != null && !status.isEmpty()) {
            query.append(" AND m.status = ?");
        }

        //tim theo or
//        if (genres != null && genres.length > 0) {
//            query.append(" AND EXISTS (SELECT * FROM movie_genres_he176244 mg WHERE mg.movie_id = m.id AND mg.genre_id IN (");
//            for (int i = 0; i < genres.length; i++) {
//                query.append("?");
//                if (i < genres.length - 1) {
//                    query.append(", ");
//                }
//            }
//            query.append("))");
//        }
        //tim theo and
        if (genres != null && genres.length > 0) {
            for (int i = 0; i < genres.length; i++) {
                query.append(" AND EXISTS (SELECT * FROM movie_genres_he176244 mg WHERE mg.movie_id = m.id AND mg.genre_id = ?)");
            }
        }

        if (category > 0) {
            query.append(" AND EXISTS (SELECT 1 FROM movie_categories_he176244 mc WHERE mc.movie_id = m.id AND mc.category_id = ?)");
        }

        // Add year to the query
        if (year > 0) {
            query.append(" AND m.year = ?");
        }

         query.append(" ORDER BY m.id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY");
         
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query.toString());

            int parameterIndex = 1; // Start parameter index

            if (top > 0) {
                ps.setInt(parameterIndex++, top);
            }

            if (status != null && !status.isEmpty()) {
                ps.setString(parameterIndex++, status);
            }

            if (genres != null && genres.length > 0) {
                for (int genre : genres) {
                    ps.setInt(parameterIndex++, genre);
                }
            }

            if (category > 0) {
                ps.setInt(parameterIndex++, category);
            }

            // Add year to the preparedStatement
            if (year > 0) {
                ps.setInt(parameterIndex++, year);
            }
             ps.setInt(parameterIndex++, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                filterMovies.add(new Movies(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (Exception e) {
            // Handle exceptions
        }

        return filterMovies;
    }

    public int InsertMovies(String title, String origin_name, String description, int year,
            String status, int duration, String img, int hot, int episode, int topview) {

        String query = "INSERT INTO movies_he176244 (title, origin_name, description,"
                + " year, status, duration, img, hot, episode, topview)"
                + " VALUES (?,?,?,?,?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            // Set parameters
            ps.setString(1, title);
            ps.setString(2, origin_name);
            ps.setString(3, description);
            ps.setInt(4, year);
            ps.setString(5, status);
            ps.setInt(6, duration);
            ps.setString(7, img);
            ps.setInt(8, hot);
            ps.setInt(9, episode);
            ps.setInt(10, topview);
            ps.executeUpdate();

            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return -1; // Return -1 if there was an error
    }

    public void InsertMovieCategory(int movieId, String[] category) {
        String query = "INSERT INTO movie_categories_he176244 (movie_id, category_id)\n"
                + "VALUES(?, ?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            for (String cat : category) {
                ps.setInt(1, movieId);
                ps.setString(2, cat);
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public void InsertMovieGenres(int movieId, String[] genres) {
        String query = "INSERT INTO movie_genres_he176244 (movie_id, genre_id)\n"
                + "VALUES (?, ?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            for (String gen : genres) {
                ps.setInt(1, movieId);
                ps.setString(2, gen);
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public void updateMovie(int id, String title, String origin_name, String description,
            int year, String status, int duration, String img, int hot, int episode, int topview) {
        String query = "UPDATE movies_he176244\n"
                + "SET title = ?\n"
                + "      ,origin_name = ?\n"
                + "      ,description = ?\n"
                + "      ,year = ?\n"
                + "      ,status = ?\n"
                + "      ,duration = ?\n"
                + "      ,img = ?\n"
                + "      ,hot = ?\n"
                + "      ,episode = ?\n"
                + "      ,topview = ?\n"
                + "WHERE id  = ?;";

        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            // Set parameters
            ps.setString(1, title);
            ps.setString(2, origin_name);
            ps.setString(3, description);
            ps.setInt(4, year);
            ps.setString(5, status);
            ps.setInt(6, duration);
            ps.setString(7, img);
            ps.setInt(8, hot);
            ps.setInt(9, episode);
            ps.setInt(10, topview);
            ps.setInt(11, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

    public void deleteMovieCategory(int movieId) {
        String query = "DELETE FROM movie_categories_he176244 WHERE movie_id = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, movieId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteMovieGenre(int movieId) {
        String query = "DELETE FROM movie_genres_he176244 WHERE movie_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, movieId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteMovie(String id) {
        String query = "delete from movies_he176244 \n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id); // Truyền tham số vào câu truy vấn
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public List<Movies> pagingMoviesesByCate(int index, String cate_id) {
        List<Movies> list = new ArrayList<>();
        String query = "select * from movies_he176244 m\n"
                + "join movie_categories_he176244 mc on m.id = mc.movie_id\n"
                + "where mc.category_id =?\n"
                + "order by m.id\n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";

        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cate_id);
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Movies> pagingMoviesesByGenres(int index, String gen_id) {
        List<Movies> list = new ArrayList<>();
        String query = "select * from movies_he176244 m\n"
                + "join movie_genres_he176244 mg on m.id = mg.movie_id\n"
                + "where mg.genre_id =?\n"
                + "order by m.id\n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";

        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, gen_id);
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getPageMovieCountByCate(String cate_id) {
        String query = "select count(*) from movies_he176244 m\n"
                + "join movie_categories_he176244 mc on m.id = mc.movie_id\n"
                + "where mc.category_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cate_id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int getPageMovieCountByGen(String gen_id) {
        String query = "select count(*) from movies_he176244 m\n"
                + "join movie_genres_he176244 mg on m.id = mg.movie_id\n"
                + "where mg.genre_id =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, gen_id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    //Category c1
    public List<Categories> getAllCategorieses() {
        List<Categories> listC = new ArrayList<>();
        String query = "select * from categories_he176244";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                listC.add(new Categories(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return listC;
    }

    public Categories getCategoriesesById(String categoryId) {
        String query = "select * from categories_he176244\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryId);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Categories(rs.getInt(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<Categories> getCategoriesesByMovieId(String movieId) {
        List<Categories> listCategory = new ArrayList<>();
        String query = "select * from categories_he176244 c\n"
                + "join movie_categories_he176244 mc on c.id = mc.category_id\n"
                + "where mc.movie_id = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movieId);
            rs = ps.executeQuery();

            while (rs.next()) {
                listCategory.add(new Categories(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return listCategory;

    }

    public void deleteCategory(String categoryId) {
        String query = "delete from categories_he176244 where id = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryId);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void InsertCategory(String name) {
        String query = "INSERT INTO categories_he176244 (name)\n"
                + "VALUES(?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Episode ep1
    public List<Episode> getAllEpisode() {
        List<Episode> listEpisodes = new ArrayList<>();
        String query = "select * from episode_he176244";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                listEpisodes.add(new Episode(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }

        return listEpisodes;

    }

    public List<Episode> getEpisodeByMovie(String movieId) {
        List<Episode> listEpisodes = new ArrayList<>();
        String query = "select * from episode_he176244 e\n"
                + "where movie_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movieId);
            rs = ps.executeQuery();

            while (rs.next()) {
                listEpisodes.add(new Episode(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }

        return listEpisodes;

    }

    public Episode getEpisodeById(String movideId, String episodeId) {
        String query = "select * from episode_he176244\n"
                + "where movie_id = ? and episode_number = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movideId);
            ps.setString(2, episodeId);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Episode(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public void InsertEpisode(String movieId, String linkUrl, String episodeNumber) {
        String query = "INSERT INTO episode_he176244(movie_id,link_url,episode_number) VALUES(?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movieId);
            ps.setString(2, linkUrl);
            ps.setString(3, episodeNumber);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteEpisode(String episodeId, String episodeNumber) {
        String query = "delete from episode_he176244 where movie_id = ? and episode_number = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, episodeId);
            ps.setString(2, episodeNumber);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void updateEpisode(int movieId, String linkUrl, int number, int numberOld) {
        String query = "UPDATE episode_he176244\n"
                + "   SET movie_id = ?\n"
                + "      ,link_url = ?\n"
                + "      ,episode_number = ?\n"
                + " WHERE movie_id = ? and episode_number = ?;";

        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, movieId);
            ps.setString(2, linkUrl);
            ps.setInt(3, number);
            ps.setInt(4, movieId);
            ps.setInt(5, numberOld);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    //user u1
    public Users login(String email, String pass) {
        String query = "select * from users_he176244\n"
                + "where email=? and password =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //signUp s1
    public Users checkUserExist(String email) {
        String query = "select * from users_he176244\n"
                + "where email=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String email, String name, String pass) {
        String query = "INSERT INTO users_he176244 (name, email, password, role_id)\n"
                + "VALUES (?, ?, ?, 2);";
        try {
            conn = new DBContext().getConnection(); // mở kết nối với SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.execute();
        } catch (Exception e) {
        }
    }

    //Genres g1
    public List<Genres> getAllGenres() {
        List<Genres> listG = new ArrayList<>();
        String query = "select * from genres_he176244";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                listG.add(new Genres(rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (Exception e) {
        }

        return listG;

    }

    public Genres getGenresById(String genId) {
        String query = "select * from genres_he176244\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, genId);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Genres(rs.getInt(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<Genres> getGenresByMovieId(String movieId) {
        List<Genres> listGenreses = new ArrayList<>();
        String query = "select * from genres_he176244 g\n"
                + "join movie_genres_he176244 mg on g.id = mg.genre_id\n"
                + "where mg.movie_id = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, movieId);
            rs = ps.executeQuery();

            while (rs.next()) {
                listGenreses.add(new Genres(rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (Exception e) {
        }

        return listGenreses;

    }

    public void InsertGenres(String name) {
        String query = "INSERT INTO genres_he176244 (name)\n"
                + "VALUES(?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteGenres(String genresId) {
        String query = "delete from genres_he176244 where id = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, genresId);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    //search s1
    public List<Movies> searchByName(String nameMovie) {
        List<Movies> list = new ArrayList<>();

        String query = "select * from movies_he176244\n"
                + "where title like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + nameMovie + "%"); // Truyền tham số vào câu truy vấn
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Movies(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        Genres genres = dao.getGenresById("1");
//        System.out.println(genres);

//        List<Movies> listGenreses = dao.getMoviesByCriteria(0, "Trailer", null, 0, 0);
//        for (Movies list : listGenreses) {
//            System.out.println(list);
//        }
        List<Movies> list = dao.pagingMoviesesByCate(2, "1");
        for (Movies movies : list) {
            System.out.println(movies);
        }

//     dao.updateMovie(47, "abc", "xyz", "dfg", 1, "okl", 0, "kls", 1, 0, 0);
//         System.out.println(dao.getMovieById("47"));
//        int movideid = dao.InsertMovies("xscd", "cxvf", "kxvgj", 1, "kkdh", 3, "dnfcd", 0, 1, 0);
//        System.out.println(movideid);
// public int InsertMovies(String title, String origin_name, String description, int year,
//            String status, int duration, String img, int hot, int episode, int topview) {
//
//        String query = "INSERT INTO movies_he176244 (title, origin_name, description,"
//                + " year, status, duration, img, hot, episode, topview)"
//                + " VALUES (?,?,?,?,?,?,?,?,?,?); SELECT SCOPE_IDENTITY()";
//        try {
//            conn = new DBContext().getConnection();//mo ket noi vs sql
//            ps = conn.prepareStatement(query);
//            // Set parameters
//            ps.setString(1, title);
//            ps.setString(2, origin_name);
//            ps.setString(3, description);
//            ps.setInt(4, year);
//            ps.setString(5, status);
//            ps.setInt(6, duration);
//            ps.setString(7, img);
//            ps.setInt(8, hot);
//            ps.setInt(9, episode);
//            ps.setInt(10, topview);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                return rs.getInt(1);
//            }
//        } catch (Exception e) {
//        }
//        return -1; // Return -1 if there was an error
//    }
//        int top = 1; // Example top value
//        String status = "Completed"; // Example status value
//        int[] genres = {1, 2}; // Example selected genres
//        int category = 1; // Example category value
//        List<Movies> filterMovies = dao.getMoviesByCriteria(top, status, genres, category);
//
//        for (Movies o : filterMovies) {
//            System.out.println(o);
//        }
    }
}
