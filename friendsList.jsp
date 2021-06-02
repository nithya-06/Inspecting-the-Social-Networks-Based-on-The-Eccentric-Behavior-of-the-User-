<%-- 
    Document   : homePage
    Created on : Oct 24, 2015, 2:51:42 PM
    Author     : ArunRamya
--%>

<%@page import="com.nura.dao.impl.UserDetailsDAOImpl"%>
<%@page import="java.util.List"%>
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
                                    <i class="glyphicon glyphicon-chevron-right"></i></a></li>
                        </ul>

                        <ul class="nav hidden-xs" id="lg-menu">
                            <li class="active">
                                <img src="getImage.jsp?usr_id=<%= _userDtls.getId()%>"  width="100" border="0">
                                <a href="userProfile.jsp"><i class="glyphicon glyphicon-user"></i>Overview</a>
                            </li>
                            <li><a href="friendsList.jsp"><i class="glyphicon glyphicon-globe"></i> Friends</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-paperclip"></i> Groups</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-thumbs-up"></i> Likes</a></li>
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

                                <!-- content -->                      
                                <div class="table-responsive">
                                    <div class="col-lg-12">
                                        <h3> Recommended Friends List</h3>
                                    </div>
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr class="active">
                                                <th>User Id</th>
                                                <th>Name</th>
                                                <th>Gender</th>
                                                <th>Add</th>
                                            </tr>
                                        </thead>
                                        <%
                                            List<com.nura.entity.RecommendFriends> recFriendsLst = 
                                                    new com.nura.dao.impl.RecommendFriendsDAOImpl().getRecommendFriends(_userDtls.getId());
                                            try {
                                                if (recFriendsLst.size() > 0) {
                                                    for (com.nura.entity.RecommendFriends recFriend : recFriendsLst) {
                                                        UserDetails _udRec = new UserDetailsDAOImpl().getUserDtls(recFriend.getFriendId());
                                        %>

                                        <tbody>
                                            <tr class="active">
                                                <td><% out.print(_udRec.getId()); %></td>
                                                <td><% out.print(_udRec.getUserName()); %></td>
                                                <td><% out.print(_udRec.getGender()); %></td>
                                                <td><a class="btn btn-danger" href="AddFriend?frId=<%=_udRec.getId() %>">Add</a></td>
                                            </tr>
                                        </tbody>                                        
                                        <%
                                                    }
                                                }
                                            } catch (Exception ex) {
                                                ex.printStackTrace();
                                            }
                                        %>
                                    </table>
                                    <!-- main col left --> 
                                    <div class="col-sm-5">

                                    </div>

                                    <!-- main col right -->
                                    <div class="col-sm-7">
                                    </div>
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
