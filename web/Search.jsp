<%-- 
    Document   : Search
    Created on : Oct 6, 2023, 8:40:37 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Anime Template">
        <meta name="keywords" content="Anime, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Anime | Template</title>

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

        <!-- Breadcrumb Begin -->
        <div class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb__links">
                            <a href="./home"><i class="fa fa-home"></i> Home</a>
                            
                                <span>Search</span>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Product Section Begin -->
        <section class="product-page spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__page__content">
                            <div class="product__page__title">
                                <div class="row">
                                    <div class="col-lg-8 col-md-8 col-sm-6">
                                        <div class="section-title">

                                           
                                                <h4>Search</h4>
                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="product__page__filter">
                                            <p>Order by:</p>
                                            <select>
                                                <option value="">A-Z</option>
                                                <option value="">1-10</option>
                                                <option value="">10-50</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach var="o"  items="${listS}">
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg="${o.img}">
                                                <div class="ep">18 / 18</div>
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                  <h5><a href="detail?mid=${o.id}&&cid=${CateName.id}">${o.title}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="product__pagination">
                            <a href="#" class="current-page">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#"><i class="fa fa-angle-double-right"></i></a>
                        </div>
                    </div>
                   
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