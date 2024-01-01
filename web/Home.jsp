<%-- 
    Document   : Home
    Created on : Sep 19, 2023, 11:19:11 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Google Font --> 
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/plyr.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <%@include file="Menu.jsp" %>
        <!-- Header End -->

        <!-- Hero Section Begin -->
        <section class="hero">
            <div class="container">
                <div class="hero__slider owl-carousel">
                    <c:forEach var="o" items="${hotMovies}">
                        <div class="hero__items set-bg" data-setbg="${o.img}">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="hero__text">
<!--                                        <div value="${o.id}" name="productid" ></div>-->
                                        <c:set var="genres" value="${dao.getGenresByMovieId(String.valueOf(o.id))}" />
                                        <c:forEach items="${genres}" var="g" varStatus="status">
                                            <div class="label">
                                                <c:out value="${g.name}" />
                                            </div>
                                        </c:forEach>

                                        <h2>${o.title}</h2>
                                        <p>${o.description}</p>
                                        <a href="watch?mid=${o.id}&&cid=1&&eid=1"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- Hero Section End -->

        <!-- Product Section Begin -->

        <!--        test-->



        <section class="product spad">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8">


                        <c:forEach items="${categoryMoviesMap}" var="entry">
                            <c:if test="${entry.key.name != 'Topview' && entry.key.name != 'Hot' && entry.key.name != 'Trailer'}">
                                <div class="trending__product">                             
                                    <div class="row">

                                        <div class="col-lg-8 col-md-8 col-sm-8">
                                            <div class="section-title">
                                                <h4>${entry.key.name}</h4>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4">
                                            <div class="btn__all">
                                                <a href="category?cid=${entry.key.id}" class="primary-btn">View All <span class="arrow_right"></span></a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <c:forEach var="o" items="${entry.value}" varStatus="status">
                                            <c:if test="${status.index < 6}">
                                                <div class="col-lg-4 col-md-6 col-sm-6">
                                                    <div class="product__item">
                                                        <div class="product__item__pic set-bg" data-setbg="${o.img}">
                                                            <div class="ep">18 / ${o.episode}</div>
                                                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                                        </div>
                                                        <div class="product__item__text">
                                                            <ul>
                                                                <li>Active</li>
                                                                <li>Movie</li>
                                                            </ul>

                                                            <h5><a href="detail?mid=${o.id}&&cid=${entry.key.id}">${o.title}</a></h5>

                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>



                    </div>
                  <%@include file="Topview.jsp" %>

                </div>
            </div>
        </section>

        <!-- Product Section End -->

        <!-- Footer Section And Search model Begin  -->
        <%@include file="Footer.jsp" %>
        <!--  Footer Section And Search model End -->



        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
 

    </body>
</html>
