<%-- 
    Document   : index
    Created on : Oct 12, 2011, 12:58:40 PM
    Author     : rr100345
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=3.0.1'></script>    
<script type='text/javascript' src='js/infinite-rotator.js'></script>
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<script>

   // window.history.forward();
    function noBack() { window.history.forward(); return true;}
</script>

<body>
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="active"><a href="#" title="">Account</a></li>
			<li><a href="ind.jsp" title="">Credit</a></li>
			<li><a href="http:\\localhost:8089\duplication\index.jsp" title="">Loan</a></li>
			
                 </ul>
        </div>
    <div id="log">
        <ul id="log1">
          <!--  <li class="active"> <a href="ULogin.jsp" style="color: #FFFFFF;margin-left: 75px;">User Login</a>
                                <a href="ALogin.jsp" style="color: #FFFFFF;">Admin Login</a> </li>-->
        </ul>
    </div>
                   
           
</div>
<div id="content">
	<div id="sidebar">
		<div id="support">
			<h2>Bank</h2>
			<h3>since 2018</h3>
		</div>
		<div id="login" class="boxed">
			<h2 class="title">Acocount Login page</h2>
			<div class="content">
				<form id="form1" name="form1" method="post" action="logincheck.jsp">
					<fieldset>
					<legend>Sign-In</legend>
					<label for="username">User ID:</label>
					<input id="username" type="text" name="username" value="" />
					<label for="password">Password:</label>
					<input id="password" type="password" name="password" value="" />
					<input id="inputsubmit1" type="submit" name="inputsubmit1" value="Sign In" />
                                        <p><label for="signup">Create New Account&nbsp;&nbsp;&nbsp;</label><a href="URegister.jsp">Sign Up</a></p>
					</fieldset>
				</form>
			</div>
		</div>
            <div id="updates" class="boxed">
			<h2 class="title">Recent Updates</h2>
			<div class="content">
				<ul>
					<li>
						<h3>Jan 6, 2018</h3>
						<p><a href="#">In posuere eleifend odio quisque semper augue mattis wisi maecenas ligula&#8230;</a></p>
					</li>
					<li>
						<h3>Jan 9, 2018</h3>
						<p><a href="#">Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh&#8230;</a></p>
					</li>
					
				</ul>
			</div>
		</div>

            
		
	</div>
    </div>
   
	<div id="main">
		
<div id="swelcome">
    <p><img src="images/img-04.jpg" alt="1" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:150px;"   /></p>
 <p><img src="images/img-01.jpg" alt="2" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:150px;"   /></p>
 <p><img src="images/img-03.jpg" alt="3"  class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:150px;"   /></p>
 <p><img src="images/img-05.jpg" alt="4"  class="rotating-item" width="472" height="232" style="margin-left: 600px; margin-top:150px;"   /></p>
</div>
         
			
	
		
	</div>
    

  <%
			Runtime m=Runtime.getRuntime();
Process t=m.exec("cmd /c C:/hadoop-2.3.0/sbin/start-all.cmd");
out.println("hai");
			%>
</body>
</html>

