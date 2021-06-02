<%-- 
    Document   : loginPage
    Created on : Oct 2, 2015, 8:34:08 PM
    Author     : ArunRamya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <div class="center-block">
            <div class="row">
                <br><br><br> 
            </div>
            <div class="row">
                <div class="col-md-4">
                    <!-- this div added for login box to center col -->
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading"> <strong class="">Login</strong>

                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" method="post" action="ValidateUser" role="form">
                                <%
                                    try {
                                        String msg = request.getParameter("msg");
                                        if (msg != null) {
                                %>
                                <div class="form-group alert-info">
                                    <center>
                                        <label for="inputEmail3" class=""><% out.print(msg); %></label>                                    
                                    </center>
                                </div>
                                <%    }
                                    } catch (Exception ex) {
                                        System.out.print(ex.getLocalizedMessage());
                                    }
                                %>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" name="username" class="form-control" id="inputEmail3" placeholder="Email" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                                    <div class="col-sm-9">
                                        <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <div class="checkbox">
                                            <label class="">
                                                <input type="checkbox" class="">Remember me</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group last">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="submit" class="btn btn-success btn-sm">
                                            <span class="glyphicon glyphicon-user"></span>
                                            Sign In
                                        </button>
                                        <button type="reset" class="btn btn-default btn-sm">
                                            <span class="glyphicon glyphicon-refresh"></span>
                                            Reset
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">Not Registered?
                            <a href="registrationPage.jsp" class="">Register here</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- script references -->
        <script src="resources/js/jQuery-2.1.4.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/scripts.js"></script>
    </body>
</html>
