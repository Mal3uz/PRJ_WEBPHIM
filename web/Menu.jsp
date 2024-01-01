<%-- 
    Document   : Menu
    Created on : Sep 27, 2023, 8:53:30 PM
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
            /* Styles for the header right section */
            .header__right {
                display: flex;
                align-items: center;
            }

            /* Styles for the profile dropdown container */
            #profile-dropdown {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                width: 150px; /* Adjust the width as needed */
                background-color: #fff;
                border: 1px solid #ccc;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                z-index: 2; /* Ensure the dropdown is above other elements */
            }

            /* Style for the dropdown list */
            #profile-dropdown ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            /* Style for the dropdown list items */
            #profile-dropdown li {
                padding: 10px;
                text-align: left;
            }

            /* Highlight on hover */
            #profile-dropdown li:hover {
                background-color: #f2f2f2;
            }

            /* Style for dropdown links */
            #profile-dropdown a {
                text-decoration: none;
                color: #333; /* Adjust the text color */
            }
        </style>

    </head>
    <body>

        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="header__logo">
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="header__nav">
                            <nav class="header__menu mobile-menu">
                                <ul>
                                    <li class="active"><a href="home">Homepage</a></li>
                                    <li><a href="#">Categories <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            <c:forEach var="o" varStatus="status" items="${category}">
                                                <li><a href="category?cid=${o.id}">${o.name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="#">Genres <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            <c:forEach var="o" varStatus="status" items="${gen}">
                                                <li><a href="genres?gid=${o.id}">${o.name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="filterMovies">Filter</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="header__right">
                            <c:if test="${sessionScope.account != null}">
                                <a href="#" class="icon_profile dropdown-toggle"></a>
                            </c:if>

                            <c:if test="${sessionScope.account == null}">
                                <a href="#" class="icon_profile "></a>
                            </c:if>
                            <div id="profile-dropdown">
                            </div>

                            <!-- HTML -->

                            <a class="icon_search" onclick="toggleSearchBox()" style="cursor: pointer;" ></a>
                            <div class="search-model" id="searchBox" style="display: none;">
                                <div class="h-100 d-flex justify-content-center">
                                    <div class="search-close-switch"><i class="icon_close"></i></div>
                                    <div class="flex-colum">
                                        <form class="search-model-form mt-25" action="search" method="post">
                                            <input oninput="searchByName(this)" name="txt" type="text" id="search-input" placeholder="Search here.....">
                                            <button class="icon_search" type="submit" ></button>
                                        </form>
                                        <div class="movie-search" id="content">


                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <!-- JavaScript -->

                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
                                var userIcon = document.querySelector('.icon_profile');

                                userIcon.addEventListener('click', function (e) {
                                    e.preventDefault(); // Prevent the default behavior of the link

                                    // Check if the user is logged in
                                    if (${sessionScope.account != null}) {
                                        // Get the profile dropdown element
                                        var profileDropdown = document.getElementById('profile-dropdown');

                                        // Create the HTML content for the dropdown
                                        profileDropdown.innerHTML = `
                       <ul>
                           <li><a href="profile">Profile</a></li>
                           <li><a href="logout">Logout</a></li>
                       </ul>`;
                                        if (profileDropdown.style.display === "block") {
                                            // If it's already displayed, hide it
                                            profileDropdown.style.display = "none";
                                        } else {
                                            // If it's hidden, show it
                                            profileDropdown.style.display = "block";
                                        }

                                    } else {
                                        // If the user is not logged in, redirect them to the login page
                                        window.location.href = 'login';

                                    }
                                });

                                function toggleSearchBox() {
                                    var searchBox = document.getElementById("searchBox");
                                    if (searchBox.style.display === "none") {
                                        searchBox.style.display = "block";
                                    } else {
                                        searchBox.style.display = "none";
                                    }
                                }


                                function searchByName(param) {
                                    var txtSearch = param.value;
                                    $.ajax({
                                        url: "/searchAjax",
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

    </script>

</body>
</html>
