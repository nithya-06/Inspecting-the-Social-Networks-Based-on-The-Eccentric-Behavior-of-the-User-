<%-- 
    Document   : sample
    Created on : Oct 12, 2011, 1:16:39 PM
    Author     : rr100345
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Pastel Co. by Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=3.0.1'></script>    
<script type='text/javascript' src='js/infinite-rotator.js'></script>
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
    
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp" title="">Homepage</a></li>
			<li><a href="Aboutus.jsp" title="">About Us</a></li>
			<li><a href="contactus.jsp" title="">Contact Us</a></li>
			
                 </ul>
        </div>
    <div id="log">
        <ul id="log1">
            <li class="active"> <a href="ULogin.jsp" style="color: #FFFFFF;margin-left: 75px;">User Login</a>
                                <a href="ALogin.jsp" style="color: #FFFFFF;">Admin Login</a> </li>
        </ul>
    </div>
                   
            
</div>
<div id="content">
	<div id="sidebar">
		<div id="support">
			<h2>Online Banking</h2>
			<h3>1-800-1234567</h3>
		</div>
		<div id="login" class="boxed">
			<h2 class="title">Client Account</h2>
			<div class="content">
				<form id="form1" method="post" action="logincheck.jsp">
					<fieldset>
					<legend>Sign-In</legend>
					<label for="username">User ID:</label>
					<input id="username" type="text" name="username" value="" />
					<label for="password">Password:</label>
					<input id="password" type="password" name="password" value="" />
					<input id="inputsubmit1" type="submit" name="inputsubmit1" value="Sign In"  onclick="return OnButton1();"/>
                                        <p><label for="signup">Create New Account&nbsp;&nbsp;&nbsp;</label><a href="#">Sign Up</a></p>
					</fieldset>
				</form>
			</div>
		</div>
            <div id="updates" class="boxed">
			<h2 class="title">Recent Updates</h2>
			<div class="content">
				<ul>
					<li>
						<h3>March 5, 2007</h3>
						<p><a href="#">In posuere eleifend odio quisque semper augue mattis wisi maecenas ligula&#8230;</a></p>
					</li>
					<li>
						<h3>March 3, 2007</h3>
						<p><a href="#">Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh&#8230;</a></p>
					</li>
					
				</ul>
			</div>
		</div>

            
		
	</div>
    </div>
   
	<div id="main">
		
<div id="swelcome">
    <p><img src="images/img-04.jpg" alt="1" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:125px;"   /></p>
 <p><img src="images/img-01.jpg" alt="2" class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
 <p><img src="images/img-03.jpg" alt="3"  class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
 <p><img src="images/img-05.jpg" alt="4"  class="rotating-item" width="472" height="232" style="margin-left: 600px; margin-top:125px;"   /></p>
</div>
</div>

<br>

<div align="center" style="margin-top:250px;margin-left:-400px;">
    <div>
   <p>
   </P>

    </div>
    <div>	<br>
	<br>
    <%@ include file="DBConn.jsp"%>

	<%
	    try{
			 String uname = request.getParameter("username");
			 String pass = request.getParameter("password");
			 String email = request.getParameter("email");
			 rs=stmt.executeQuery("select * from uregister where username='"+uname+"'");
			 if(rs.next()){
				out.println("<font color=blue size=+2>Username:"+uname+" already exits  <br><a href=index.jsp>Back</a></font>");
			 }else{
				 int i = stmt.executeUpdate("insert into muregister (username,password,email)  values('"+uname+"','"+pass+"','"+email+"') ");
				 if(i>0){
					 %>
					 <script>
						 alert("Successfully Register");
					 </script>
					 <%
					 out.println("<font color=blue size=+2>Successfully inserted<br><a href=index.jsp>Back</a></font>");
				 }else{
					 out.println("<font color=red size=+2>Not inserted<br><a href=URegister.jsp>Click here</a></font>");
				}
			 }

	}catch(Exception ex){
		ex.printStackTrace();
		out.println(ex);
	}
	%>
   
    </div>
</div>

    


</body>
</html>
