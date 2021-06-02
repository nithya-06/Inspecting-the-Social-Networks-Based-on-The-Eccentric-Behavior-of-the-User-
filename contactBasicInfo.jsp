<%-- 
    Document   : contactBasicInfo
    Created on : Nov 3, 2015, 1:08:10 AM
    Author     : ArunRamya
--%>

<%@page import="java.util.Set"%>
<%@page import="com.nura.entity.UserLikes"%>
<%@page import="com.nura.entity.UserDetails"%>
<%
    UserDetails _userDtls = (UserDetails) session.getAttribute(constants.Constants.SESSION_USER_OBJ);
    System.out.print("Getting sesion obj");
    if (_userDtls == null) {
        System.out.print("Session timed out");
        response.sendRedirect("loginPage.jsp?msg=Session timed out");
    } else {
        System.out.print(_userDtls.getUserName());
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title><% out.print(constants.Constants.WEB_TITLE);%></title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <!--[if lt IE 9]>
                <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link href="resources/css/styles.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            <div class="box">
                <div class="row row-offcanvas row-offcanvas-left">
                    <!-- sidebar -->
                    <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

                        <ul class="nav">
                            <li><a href="#" data-toggle="offcanvas" class="visible-xs text-center">
                                    <i class="glyphicon glyphicon-chevron-right"></i></a>
                            </li>
                        </ul>

                        <ul class="nav hidden-xs" id="lg-menu">
                            <li class="active">
                                <img src="getImage.jsp?usr_id=<%= _userDtls.getId()%>"  width="100" border="0">
                                <a href="userProfile.jsp"><i class="glyphicon glyphicon-globe"></i>Worked @</a>
                            </li>
                            <li class="active">
                                <a href="placeULived.jsp"><i class="glyphicon glyphicon-globe"></i>Places U Lived</a>
                            </li>
                            <li class="active">
                                <a href="contactBasicInfo.jsp"><i class="glyphicon glyphicon-phone"></i>Contact & Basic Info</a>
                            </li>
                            <li class="active">
                                <a href="detailsAboutU.jsp"><i class="glyphicon glyphicon-dashboard"></i>Details About U</a>
                            </li>
                            <li class="active">
                                <!-- <a href="lifeEvents.jsp"><i class="glyphicon glyphicon-heart"></i>Life Events</a> -->
                                <a href="#"><i class="glyphicon glyphicon-heart"></i>Life Events</a>
                            </li>
                        </ul>
                        <!-- tiny only nav-->
                        <ul class="nav visible-xs" id="xs-menu">

                            <li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                            <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                            <li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
                            <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                        </ul>

                    </div>
                    <!-- /sidebar -->

                    <!-- main right col -->
                    <div class="column col-sm-10 col-xs-11" id="main">

                        <!-- top nav -->
                        <div class="navbar navbar-blue navbar-static-top">  
                            <div class="navbar-header">
                                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a href="/" class="navbar-brand logo">b</a>
                            </div>
                            <nav class="collapse navbar-collapse" role="navigation">
                                <form class="navbar-form navbar-left">
                                    <div class="input-group input-group-sm" style="max-width:360px;">
                                        <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                                <ul class="nav navbar-nav">
                                    <li>
                                        <a href="homePage.jsp"><i class="glyphicon glyphicon-home"></i> Home</a>
                                    </li>

                                </ul>
                                <ul class="nav navbar-nav navbar-right">                                    
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="glyphicon glyphicon-user"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="loginPage.jsp">Logout</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="loginPage.jsp" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="glyphicon glyphicon-log-out"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!-- /top nav -->

                        <div class="padding">
                            <div class="full col-sm-9">
                                <center>
                                    <form method="post" action="ContactInfoServlet">
                                        <div><h4>Contacts and Basic Info</h4></div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="text" name="mob_no" class="form-control" id="inputEmail3" placeholder="Mobile Number" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="text" name="address" class="form-control" id="inputEmail3" placeholder="Address" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="email" name="email_id" class="form-control" id="inputEmail3" placeholder="Email" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="text" name="lang_known" class="form-control" id="inputEmail3" placeholder="Language Known" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="text" name="rel_view" class="form-control" id="inputEmail3" placeholder="Religious View" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <input type="text" name="political_view" class="form-control" id="inputEmail3" placeholder="Political View" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-success" type="submit" name="Submit">
                                                <span class="glyphicon glyphicon-plus-sign"></span>Add
                                            </button>
                                        </div>
                                    </form>
                                </center>
                            </div><!-- /col-9 -->
                        </div><!-- /padding -->
                    </div>
                    <!-- /main -->

                </div>
            </div>
        </div>


        <!--post modal-->
        <form method="post" action="UploadPost">
            <div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            Add post
                        </div>
                        <div class="modal-body">
                            <form class="form center-block">
                                <div class="form-group">
                                    <textarea class="form-control input-lg" autofocus="" 
                                              placeholder="What do you want to share"></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div>
                                <button class="btn btn-primary btn-sm" data-dismiss="modal" 
                                        aria-hidden="true">Post</button>
                                <ul class="pull-left list-inline">
                                    <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- script references -->
        <script src="resources/js/jQuery-2.1.4.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/scripts.js"></script>
    </body>
</html>



