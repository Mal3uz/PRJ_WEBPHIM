<%-- 
    Document   : MenuAdmin
    Created on : Oct 16, 2023, 9:19:18 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
      
        
<!--        icon-->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        
        <link rel="stylesheet" href="../admin_dashboard/assets_dashboard/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="../admin_dashboard/assets_dashboard/css/style.css">
    </head>
    <body>
        <!-- Left Panel -->
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="../admin/adminDashboard"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                        </li>
                        <li class="menu-title">list elements</li><!-- /.menu-title -->

                        <!-- add movie-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Movies</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="../poster/posterMovie">Add Movies</a></li>
                            </ul>
                        </li>

                        <!-- add category-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Category</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="../poster/posterCategory">Add Category</a></li>
                            </ul>
                        </li>

                        <!-- add genres-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Genres</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="../poster/posterGenres">Add Genres</a></li>
                            </ul>
                        </li>

                        <!-- add episode-->
                         <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Episode</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="../poster/posterEpisode">Add Episode</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside>
        <!-- /#left-panel -->
        <!-- Right Panel -->
        <div id="right-panel" class="right-panel">
            <!-- Header-->
            <header id="header" class="header">
                <div class="top-left">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="./"><img src="../admin_dashboard/assets_dashboard/images/logo.png" alt="Logo"></a>
                        <a class="navbar-brand hidden" href="./"><img src="../admin_dashboard/assets_dashboard/images/logo2.png" alt="Logo"></a>
                        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="header-left">
                            <button class="search-trigger"><i class="fa fa-search"></i></button>
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..."
                                           aria-label="Search">
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                </form>
                            </div>

                            <div class="dropdown for-notification">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="notification"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-bell"></i>
                                    <span class="count bg-danger">3</span>
                                </button>
                                <div class="dropdown-menu" aria-labelledby="notification">
                                    <p class="red">You have 3 Notification</p>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-check"></i>
                                        <p>Server #1 overloaded.</p>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-info"></i>
                                        <p>Server #2 overloaded.</p>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-warning"></i>
                                        <p>Server #3 overloaded.</p>
                                    </a>
                                </div>
                            </div>

                            <div class="dropdown for-message">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="message"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-envelope"></i>
                                    <span class="count bg-primary">4</span>
                                </button>
                                <div class="dropdown-menu" aria-labelledby="message">
                                    <p class="red">You have 4 Mails</p>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="../admin_dashboard/assets_dashboard/images/avatar/1.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jonathan Smith</span>
                                            <span class="time float-right">Just now</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="../admin_dashboard/assets_dashboard/images/avatar/2.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jack Sanders</span>
                                            <span class="time float-right">5 minutes ago</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="../admin_dashboard/assets_dashboard/images/avatar/3.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Cheryl Wheeler</span>
                                            <span class="time float-right">10 minutes ago</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="../admin_dashboard/assets_dashboard/images/avatar/4.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Rachel Santos</span>
                                            <span class="time float-right">15 minutes ago</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="../admin_dashboard/assets_dashboard/images/admin.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span
                                        class="count">13</span></a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>

                    </div>
                </div>
            </header>