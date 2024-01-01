<%-- 
    Document   : MoviesAdd
    Created on : Sep 30, 2023, 10:02:00 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="../assets_dashboard/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="../assets_dashboard/css/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>

        <!-- Left Panel -->
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="../Dashboard.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                        </li>
                        <li class="menu-title">List elements</li><!-- /.menu-title -->


                        <!-- add movie-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Movies</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesAdd.jsp">Add Movies</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesList.jsp">List Movies</a></li>
                            </ul>
                        </li>

                        <!-- add category-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Category</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesAdd.jsp">Add Category</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesList.jsp">List Category</a></li>
                            </ul>
                        </li>

                        <!-- add genres-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Genres</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesAdd.jsp">Add Genres</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesList.jsp">List Genres</a></li>
                            </ul>
                        </li>

                        <!-- add episode-->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Episode</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesAdd.jsp">Add Episode</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="MoviesList.jsp">List Episode</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside>
        <!-- /#left-panel -->
        <div id="right-panel" class="right-panel">
            <!-- Header-->
            <header id="header" class="header">
                <div class="top-left">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="./"><img src="../assets_dashboard/images/logo.png" alt="Logo"></a>
                        <a class="navbar-brand hidden" href="./"><img src="../assets_dashboard/images/logo2.png" alt="Logo"></a>
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
                                        <span class="photo media-left"><img alt="avatar" src="assets_dashboard/images/avatar/1.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jonathan Smith</span>
                                            <span class="time float-right">Just now</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="assets_dashboard/images/avatar/2.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jack Sanders</span>
                                            <span class="time float-right">5 minutes ago</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="assets_dashboard/images/avatar/3.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Cheryl Wheeler</span>
                                            <span class="time float-right">10 minutes ago</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="assets_dashboard/images/avatar/4.jpg"></span>
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
                                <img class="user-avatar rounded-circle" src="assets_dashboard/images/admin.jpg" alt="User Avatar">
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
            <div class="content">
                <div class="animated fadeIn">


                    <div class="row">


                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header text-center">
                                    <strong>Add Movies</strong> 
                                </div>
                                <div class="card-body card-block">
                                    <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">

                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input"
                                                                             class=" form-control-label">Title</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                                name="text-input" placeholder="Title" class="form-control"></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="email-input"
                                                                             class=" form-control-label">Email Input</label></div>
                                            <div class="col-12 col-md-9"><input type="email" id="email-input"
                                                                                name="email-input" placeholder="Enter Email" class="form-control"><small
                                                                                class="help-block form-text">Please enter your email</small></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="password-input"
                                                                             class=" form-control-label">Password</label></div>
                                            <div class="col-12 col-md-9"><input type="password" id="password-input"
                                                                                name="password-input" placeholder="Password" class="form-control"><small
                                                                                class="help-block form-text">Please enter a complex password</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="disabled-input"
                                                                             class=" form-control-label">Disabled Input</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="disabled-input"
                                                                                name="disabled-input" placeholder="Disabled" disabled=""
                                                                                class="form-control"></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="textarea-input"
                                                                             class=" form-control-label">Textarea</label></div>
                                            <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input"
                                                                                   rows="9" placeholder="Content..." class="form-control"></textarea></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="select"
                                                                             class=" form-control-label">Select</label></div>
                                            <div class="col-12 col-md-9">
                                                <select name="select" id="select" class="form-control">
                                                    <option value="0">Please select</option>
                                                    <option value="1">Option #1</option>
                                                    <option value="2">Option #2</option>
                                                    <option value="3">Option #3</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="selectLg"
                                                                             class=" form-control-label">Select Large</label></div>
                                            <div class="col-12 col-md-9">
                                                <select name="selectLg" id="selectLg" class="form-control-lg form-control">
                                                    <option value="0">Please select</option>
                                                    <option value="1">Option #1</option>
                                                    <option value="2">Option #2</option>
                                                    <option value="3">Option #3</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="selectSm"
                                                                             class=" form-control-label">Select Small</label></div>
                                            <div class="col-12 col-md-9">
                                                <select name="selectSm" id="selectSm" class="form-control-sm form-control">
                                                    <option value="0">Please select</option>
                                                    <option value="1">Option #1</option>
                                                    <option value="2">Option #2</option>
                                                    <option value="3">Option #3</option>
                                                    <option value="4">Option #4</option>
                                                    <option value="5">Option #5</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="disabledSelect"
                                                                             class=" form-control-label">Disabled Select</label></div>
                                            <div class="col-12 col-md-9">
                                                <select name="disabledSelect" id="disabledSelect" disabled=""
                                                        class="form-control">
                                                    <option value="0">Please select</option>
                                                    <option value="1">Option #1</option>
                                                    <option value="2">Option #2</option>
                                                    <option value="3">Option #3</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="multiple-select"
                                                                             class=" form-control-label">Multiple select</label></div>
                                            <div class="col col-md-9">
                                                <select name="multiple-select" id="multiple-select" multiple=""
                                                        class="form-control">
                                                    <option value="1">Option #1</option>
                                                    <option value="2">Option #2</option>
                                                    <option value="3">Option #3</option>
                                                    <option value="4">Option #4</option>
                                                    <option value="5">Option #5</option>
                                                    <option value="6">Option #6</option>
                                                    <option value="7">Option #7</option>
                                                    <option value="8">Option #8</option>
                                                    <option value="9">Option #9</option>
                                                    <option value="10">Option #10</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label class=" form-control-label">Radios</label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="radio">
                                                        <label for="radio1" class="form-check-label ">
                                                            <input type="radio" id="radio1" name="radios" value="option1"
                                                                   class="form-check-input">Option 1
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio2" class="form-check-label ">
                                                            <input type="radio" id="radio2" name="radios" value="option2"
                                                                   class="form-check-input">Option 2
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio3" class="form-check-label ">
                                                            <input type="radio" id="radio3" name="radios" value="option3"
                                                                   class="form-check-input">Option 3
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label class=" form-control-label">Inline
                                                    Radios</label></div>
                                            <div class="col col-md-9">
                                                <div class="form-check-inline form-check">
                                                    <label for="inline-radio1" class="form-check-label ">
                                                        <input type="radio" id="inline-radio1" name="inline-radios"
                                                               value="option1" class="form-check-input">One
                                                    </label>
                                                    <label for="inline-radio2" class="form-check-label ">
                                                        <input type="radio" id="inline-radio2" name="inline-radios"
                                                               value="option2" class="form-check-input">Two
                                                    </label>
                                                    <label for="inline-radio3" class="form-check-label ">
                                                        <input type="radio" id="inline-radio3" name="inline-radios"
                                                               value="option3" class="form-check-input">Three
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label class=" form-control-label">Checkboxes</label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="checkbox">
                                                        <label for="checkbox1" class="form-check-label ">
                                                            <input type="checkbox" id="checkbox1" name="checkbox1"
                                                                   value="option1" class="form-check-input">Option 1
                                                        </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label for="checkbox2" class="form-check-label ">
                                                            <input type="checkbox" id="checkbox2" name="checkbox2"
                                                                   value="option2" class="form-check-input"> Option 2
                                                        </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label for="checkbox3" class="form-check-label ">
                                                            <input type="checkbox" id="checkbox3" name="checkbox3"
                                                                   value="option3" class="form-check-input"> Option 3
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label class=" form-control-label">Inline
                                                    Checkboxes</label></div>
                                            <div class="col col-md-9">
                                                <div class="form-check-inline form-check">
                                                    <label for="inline-checkbox1" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox1" name="inline-checkbox1"
                                                               value="option1" class="form-check-input">One
                                                    </label>
                                                    <label for="inline-checkbox2" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox2" name="inline-checkbox2"
                                                               value="option2" class="form-check-input">Two
                                                    </label>
                                                    <label for="inline-checkbox3" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox3" name="inline-checkbox3"
                                                               value="option3" class="form-check-input">Three
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="file-input"
                                                                             class=" form-control-label">File input</label></div>
                                            <div class="col-12 col-md-9"><input type="file" id="file-input"
                                                                                name="file-input" class="form-control-file"></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="file-multiple-input"
                                                                             class=" form-control-label">Multiple File input</label></div>
                                            <div class="col-12 col-md-9"><input type="file" id="file-multiple-input"
                                                                                name="file-multiple-input" multiple="" class="form-control-file"></div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Submit
                                    </button>
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Reset
                                    </button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <strong>Inline</strong> Form
                                </div>
                                <div class="card-body card-block">
                                    <form action="#" method="post" class="form-inline">
                                        <div class="form-group"><label for="exampleInputName2"
                                                                       class="pr-1  form-control-label">Name</label><input type="text"
                                                                       id="exampleInputName2" placeholder="Jane Doe" required=""
                                                                       class="form-control"></div>
                                        <div class="form-group"><label for="exampleInputEmail2"
                                                                       class="px-1  form-control-label">Email</label><input type="email"
                                                                       id="exampleInputEmail2" placeholder="jane.doe@example.com" required=""
                                                                       class="form-control"></div>
                                    </form>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Submit
                                    </button>
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Reset
                                    </button>
                                </div>
                            </div>
                        </div>





                    </div>


                </div><!-- .animated -->
            </div><!-- .content -->
        </div>
        <div class="clearfix"></div>

        <footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
                    <div class="col-sm-6">

                    </div>
                    <div class="col-sm-6 text-right">

                    </div>
                </div>
            </div>
        </footer>

    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets_dashboard/js/main.js"></script>


</body>
</html>
