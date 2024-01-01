<%-- 
    Document   : Topview
    Created on : Oct 13, 2023, 10:47:53 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .product__sidebar__view .filter__controls div {
                font-size: 13px;
                color: #b7b7b7;
                display: inline-block;
                margin-right: 7px;
                cursor: pointer;
            }

            .product__sidebar__view .filter__controls div.active {
                color: #ffffff;
            }

            .product__sidebar__view .filter__controls div:last-child {
                margin-right: 0;
            }

        </style>
    </head>
    <body>
<!--        <div class="col-lg-4 col-md-6 col-sm-8">
            <div class="product__sidebar">
                <div class="product__sidebar__view">
                    <div class="section-title">
                        <h5>Top Views</h5>
                    </div>
                    <div class="filter__controls">
                        <div onclick="searchByTop(this)" data-value='1' name='txt' class="active" data-filter="*">Day</div>
                        <div onclick="searchByTop(this)" data-value='2' name='txt' data-filter=".week">Week</div>
                        <div onclick="searchByTop(this)" data-value='3' name='txt' data-filter=".month">Month</div>
                        <div onclick="searchByTop(this)" data-value='4' name='txt' data-filter=".years">Years</div>
                    </div>
                    <div class="filter__gallery" id="content">

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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
                            function searchByTop(param) {
                                var txtSearch = param.getAttribute('data-value');
                                $.ajax({
                                    url: "/webphim/topview",
                                    type: "get",
                                    data: {
                                        txt: txtSearch
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("content");
                                        row.innerHTML = data;
                                    }
                                });
                            }
        </script>-->

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
    </body>

</html>
