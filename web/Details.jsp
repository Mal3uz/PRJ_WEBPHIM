<%-- 
    Document   : Details
    Created on : Sep 22, 2023, 8:18:36 PM
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
                            <c:if test="${not empty CateName }">
                                <a href="./category?cid=${CateName.id}">${CateName.name}</a>
                            </c:if>
                            <c:if test="${not empty genName }">
                                <a href="./genres?gid=${genName.id}">${genName.name}</a>        
                            </c:if>
                            <span>Detail</span>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Anime Section Begin -->
        <section class="anime-details spad">

            <div class="container">
                <div class="anime__details__content">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="anime__details__pic set-bg" data-setbg="${detailMovie.img}">
                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                            </div>
                        </div>
                        <div class="col-lg-9">

                            <div class="anime__details__text">
                                <div class="anime__details__title">
                                    <h3>${detailMovie.title}</h3>
                                    <span>フェイト／ステイナイト, Feito／sutei naito</span>
                                </div>
                                <div class="anime__details__rating">
                                    <form id="starForm" method="POST" action="rating">
                                        <!-- Tạo một input ẩn để lưu giá trị sao -->
                                        <input type="hidden" id="starValue" name="starValue">
                                        <!-- Tạo các ngôi sao dưới dạng liên kết -->
                                        <a href="#" class="star" data-value="1"><i class="fa fa-star"></i></a>
                                        <a href="#" class="star" data-value="2"><i class="fa fa-star"></i></a>
                                        <a href="#" class="star" data-value="3"><i class="fa fa-star"></i></a>
                                        <a href="#" class="star" data-value="4"><i class="fa fa-star"></i></a>
                                        <a href="#" class="star" data-value="5"><i class="fa fa-star"></i></a>
                                    </form>
                                    <span>1.029 Votes</span>
                                </div>

                                <p>${detailMovie.description}</p>
                                <div class="anime__details__widget">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6">
                                            <ul>
                                                <li><span>Type:</span> TV Series</li>
                                                <li><span>Studios:</span> Lerche</li>
                                                <li><span>Year:</span> ${detailMovie.year}</li>
                                                <li><span>Status:</span> ${detailMovie.status}</li>
                                                <li><span>Genre:</span>
                                                    <c:forEach items="${genres}" var="genre" varStatus="status">
                                                        <c:out value="${genre.name}" />
                                                        <c:if test="${not status.last}">,</c:if>
                                                    </c:forEach>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <ul>
                                                <li><span>Scores:</span> 7.31 / 1,515</li>
                                                <li><span>Rating:</span> 8.5 / 161 times</li>
                                                <li><span>Duration:</span>  ${detailMovie.duration} min/ep</li>
                                                <li><span>Quality:</span> HD</li>
                                                <li><span>Views:</span> 131,541</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="anime__details__btn">
                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Follow</a>
                                    <c:if test="${not empty CateName }">
                                        <a href="watch?mid=${detailMovie.id}&&cid=${CateName.id}&&eid=1" class="watch-btn"><span>Watch Now</span> <i
                                            class="fa fa-angle-right"></i></a>
                                    </c:if>
                                    <c:if test="${not empty genName }">
                                         <a href="watch?mid=${detailMovie.id}&&gid=${genName.id}&&eid=1" class="watch-btn"><span>Watch Now</span> <i
                                            class="fa fa-angle-right"></i></a>
                                    </c:if>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-1.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Chris Curry - <span>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                        "demons" LOL</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-2.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-3.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-4.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Chris Curry - <span>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                        "demons" LOL</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-5.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-6.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p>
                                </div>
                            </div>
                        </div>
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>Your Comment</h5>
                            </div>
                            <form action="#">
                                <textarea placeholder="Your Comment"></textarea>
                                <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>you might like...</h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-2.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-3.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-4.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <!-- Anime Section End -->

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
        <script>// Sử dụng jQuery
            var clickedStar = null;

            $('.star').on('click', function () {
                clickedStar = $(this);
                $(this).prevAll().addBack().children('i').removeClass('fa-star-o').addClass('fa-star');
                $(this).nextAll().children('i').removeClass('fa-star').addClass('fa-star-o');
            });

            $('.star').hover(
                    // Khi chuột di chuyển vào
                            function () {
                                $(this).prevAll().addBack().children('i').removeClass('fa-star-o').addClass('fa-star');
                                $(this).nextAll().children('i').removeClass('fa-star').addClass('fa-star-o');
                            },
                            // Khi chuột di chuyển ra
                                    function () {
                                        $('.star i.fa-star').removeClass('fa-star').addClass('fa-star-o');
                                        if (clickedStar != null) {
                                            clickedStar.prevAll().addBack().children('i').removeClass('fa-star-o').addClass('fa-star');
                                        }
                                    }
                            );

        </script>
    </body>

</html>
