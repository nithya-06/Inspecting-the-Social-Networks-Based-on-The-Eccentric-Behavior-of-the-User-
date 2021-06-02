<%-- 
    Document   : adminPage
    Created on : Dec 18, 2016, 10:28:13 PM
    Author     : pranav
--%>

<%@page import="com.nura.entity.UserPost"%>
<%@page import="java.util.List"%>
<%@page import="com.nura.entity.FriendsList"%>
<%@page import="com.nura.entity.UserDetails"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                    <i class="glyphicon glyphicon-chevron-right"></i></a></li>
                        </ul>

                        <ul class="nav hidden-xs" id="lg-menu">
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
                                    <li>
                                        <a href="#postModal" role="button" data-toggle="modal"><i class="glyphicon glyphicon-plus"></i> Post</a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="badge">badge</span></a>
                                    </li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">                                    
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <% out.print("Admin");%>
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
                                <center><h3>Search</h3></center>
                                <!-- content -->                      
                                <div class="row">                                   
                                    <form action="RateUser" method="post" role="form">
                                        <div class="form-group">
                                            <label for="userName">User Name:</label>
                                            <input type="text" name="user_name" class="form-control" id="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="userName">Nick Name:</label>
                                            <input type="text" name="nick_name" class="form-control" id="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="">School:</label>
                                            <input type="text" name="school" class="form-control" id="pwd">
                                        </div>          
                                        <div class="form-group">
                                            <label for="">Education:</label>
                                            <input type="text" name="edu" class="form-control" id="pwd">
                                        </div>                                            
                                        <div class="form-group">
                                            <label for="">Work:</label>
                                            <input type="text" name="work" class="form-control" id="pwd">
                                        </div>
                                        <div class="form-group">
                                            <label class="">DOB</label>
                                                <input type="date" name="dob" class="form-control" value="dd-MM-yyyy">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Gender:</label>
                                            <select name="gender" class="form-control">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>                                                
                                        </div>
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </form>
                                </div><!--/row-->
                            </div><!-- /col-9 -->
                        </div><!-- /padding -->
                    </div>
                    <!-- /main -->

                </div>
            </div>
        </div>


        <!--post modal-->

        <div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        Add post
                    </div>
                    <form method="post" action="UploadPost" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <textarea name="post_content" class="form-control input-lg" autofocus="" 
                                          placeholder="What do you want to share"></textarea>
                            </div>
                            <div class="modal-body">
                                <input class="form-control" name="file_sel" type="file"/>    
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-sm">Post</button>
                                <!--
                                <ul class="pull-left list-inline">
                                    <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                                -->
                            </div>	
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- script references -->
        <script src="resources/js/jQuery-2.1.4.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/scripts.js"></script>
    </body>
</html>
