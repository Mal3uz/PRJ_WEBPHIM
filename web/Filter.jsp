<%-- 
    Document   : Filter
    Created on : Oct 10, 2023, 8:47:37 PM
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

                            <span>Filter</span>

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
                    <div class="col-lg-8">
                        <div class="product__page__content">
                            <div class="product__page__title">
                                <div class="row">

                                    <div class="section-title">

                                        <h4>Filter</h4>
                                    </div>

                                </div>
                                <br>
                                <div class="row "  >
                                    <form action="filterMovies" method="post" class="col-lg-12">
                                        <div class="col-lg-12" >
                                            <div class="product__page__filter" style="float: left;">
                                                <p style="width: 55px;text-align: left;">Top:</p>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="top"  value="0" ${checktop == 0 ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">None</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="top"  value="1" ${checktop == 1 ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Day</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="top"  value="2" ${checktop == 2 ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Week</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="top"  value="3" ${checktop == 3 ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Month</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="top" value="4" ${checktop == 4 ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Year</p>
                                                    </label>

                                                </div>

                                            </div>

                                        </div>
                                        <div style="clear: left;"></div>


                                        <div class="col-lg-12" >
                                            <div class="product__page__filter" style="float: left;">
                                                <p style="width: 55px;text-align: left;">Status:</p>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="status" id="radioTrailer" value="Trailer" ${checkstatus == "Trailer" ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Trailer</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="status" id="radioTrailer" value="Airing" ${checkstatus == "Airing" ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Airing</p>
                                                    </label>

                                                    <input class="form-check-input" type="radio" name="status" id="radioTrailer" value="Completed" ${checkstatus == "Completed" ? 'checked' : ''}>
                                                    <label class="form-check-label" for="radioTrailer">
                                                        <p style="text-align: center;">Completed</p>
                                                    </label>

                                                </div>
                                            </div>

                                        </div>
                                        <div style="clear: left;"></div>

                                        <div class="col-lg-12" >
                                            <div class="row product__page__filter form-check-inline" style="float: left;padding-left: 15px;" >
                                                <p >Genres:</p>            

                                                <div class="form-check">

                                                    <c:forEach items="${gen}" var="o">
                                                        <div class="form" style="float: left;">
                                                            <input class="form-check-input" type="checkbox" name="genres" id="checkbox1-10" value="${o.id}"
                                                                   <c:forEach var="c" items="${checkgenres}">
                                                                      ${c == o.id ? 'checked' : ''}
                                                                 </c:forEach>
                                                                   >
                                                            <label class="form-check-label" for="checkbox1-10">
                                                                <p>${o.name}</p>
                                                            </label>
                                                        </div>
                                                        <div style="clear: left;"></div>
                                                    </c:forEach>
                                                </div>
                                            </div>

                                        </div>
                                        <div style="clear: left;"></div>
                                        <div class="col-lg-12">
                                            <div class="product__page__filter" style="float: left;" >
                                                <p style="width: 55px;text-align: left;">Category:</p>
                                                <select class="form-control" name="category">
                                                    <option value="0">Select Category</option>
                                                    <c:forEach items="${category}" var="o"> 
                                                        <option value="${o.id}" ${o.id == checkcategory ? 'selected' : ''}>${o.name}</option>
                                                    </c:forEach>

                                                </select>
                                            </div>

                                        </div>
                                        <div style="clear: left;"></div>

                                        <div class="col-lg-12">
                                            <div class="product__page__filter" style="float: left;" >
                                                <p style="width: 55px;text-align: left;">Year:</p>
                                                <select class="form-control " name="yeartxt">
                                                    <option value="0">Select Year</option>
                                                    <c:forEach begin="2015" end="2030" varStatus="status">
                                                        <option value="${status.index}" ${status.index == checkyear ? 'selected' : ''}>${status.index}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                        </div>
                                        <div style="clear: left;"></div>
                                        <br>
                                        <button type="submit" class="btn btn-light col-lg-12 " style="font-weight: 700;">Filter</button>
                                    </form>

                                </div>




                            </div>
                            <div class="row">
                                <c:forEach var="o"  items="${flist}">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
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
                                                <h5><a href="detail?mid=${o.id}&&cid=${categoryId}">${o.title}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="product__pagination">
                             <c:forEach begin="1" end="${endP}"  var="i">
                                 <a href="filterMovies?index=${i}" ${check == i ? 'class="current-page"' : ''}>${i}</a>
                            </c:forEach>
                          
                            <a href="#"><i class="fa fa-angle-double-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="product__sidebar">
                            <div class="product__sidebar__view">
                                <div class="section-title">
                                    <h5>Top Views</h5>
                                </div>
                                <ul class="filter__controls">
                                    <li class="active" data-filter="*">Day</li>
                                    <li data-filter=".week">Week</li>
                                    <li data-filter=".month">Month</li>
                                    <li data-filter=".years">Years</li>
                                </ul>
                                <div class="filter__gallery">
                                    <div class="product__sidebar__view__item set-bg mix day years"
                                         data-setbg="img/sidebar/tv-1.jpg">
                                        <div class="ep">18 / ?</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                        <h5><a href="#">Boruto: Naruto next generations</a></h5>
                                    </div>
                                    <div class="product__sidebar__view__item set-bg mix month week"
                                         data-setbg="img/sidebar/tv-2.jpg">
                                        <div class="ep">18 / ?</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                    </div>
                                    <div class="product__sidebar__view__item set-bg mix week years"
                                         data-setbg="img/sidebar/tv-3.jpg">
                                        <div class="ep">18 / ?</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                        <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                                    </div>
                                    <div class="product__sidebar__view__item set-bg mix years month"
                                         data-setbg="img/sidebar/tv-4.jpg">
                                        <div class="ep">18 / ?</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                        <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                    </div>
                                    <div class="product__sidebar__view__item set-bg mix day"
                                         data-setbg="img/sidebar/tv-5.jpg">
                                        <div class="ep">18 / ?</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                        <h5><a href="#">Fate stay night unlimited blade works</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="product__sidebar__comment">
                                <div class="section-title">
                                    <h5>New Comment</h5>
                                </div>
                                <div class="product__sidebar__comment__item">
                                    <div class="product__sidebar__comment__item__pic">
                                        <img src="img/sidebar/comment-1.jpg" alt="">
                                    </div>
                                    <div class="product__sidebar__comment__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                        <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment__item">
                                    <div class="product__sidebar__comment__item__pic">
                                        <img src="img/sidebar/comment-2.jpg" alt="">
                                    </div>
                                    <div class="product__sidebar__comment__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                                        <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment__item">
                                    <div class="product__sidebar__comment__item__pic">
                                        <img src="img/sidebar/comment-3.jpg" alt="">
                                    </div>
                                    <div class="product__sidebar__comment__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                                        <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment__item">
                                    <div class="product__sidebar__comment__item__pic">
                                        <img src="img/sidebar/comment-4.jpg" alt="">
                                    </div>
                                    <div class="product__sidebar__comment__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Monogatari Series: Second Season</a></h5>
                                        <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                    </div>
                                </div>
                            </div>
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

