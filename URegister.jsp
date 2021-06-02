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
<script type="text/javascript">

window.onload = function() {
	for(var i = 0, l = document.getElementsByTagName('input').length; i < l; i++) {
		if(document.getElementsByTagName('input').item(i).type == 'text') {
			document.getElementsByTagName('input').item(i).setAttribute('autocomplete', 'off');
		}
	}
}

function Validate(){
	 //alert("karthik");
  if(document.register.username.value== ""){
		alert("Please enter the userName");
		document.register.username.focus();
		return false;
  }if(document.register.password.value== ""){
		alert("Please enter the Password");
		document.register.password.focus();
		return false;
  }if(document.register.email.value== ""){
		alert("Please enter the email id");
		document.register.email.focus();
		return false;
  }if(document.register.email.value.indexOf("@") == -1){
		alert("Please enter the valid email id");
		document.register.email.focus();
		return false;
  }if(document.register.email.value.indexOf(".")==-1){
		alert("Please enter the valid email id");
		document.register.email.focus();
		return false;
  }
	
 return true;
 }

</script>

</head>
<body>
    
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp" title="">Account</a></li>
			<li><a href="Aboutus.jsp" title="">Credit</a></li>
			<li><a href="contactus.jsp" title="">Loan</a></li>
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
			<h2>Bank</h2>
			<h3>Since 2018</h3>
		</div>
		<div id="login" class="boxed">
			<h2 class="title">Login Page</h2>
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
    <form name="register" method="post" id="register" action="addUser.jsp">
    <table>
		<tr><td colspan=3 align=center>Register</td></tr>
		<tr><td>UserName</td><td>:</td><td><input type="text" name="username" id="username" /></td></tr>
		<tr><td>Password</td><td>:</td><td><input type="password" name="password" id="password" /></td></tr>
		<tr><td>Email</td><td>:</td><td><input type="text" name="email" id="email" /></td></tr>
		<tr><td colspan=3 align=center><input  type="submit" name="register" id="register" value="Register" onclick="return Validate();" />&nbsp;&nbsp;&nbsp;<input  type="reset" name="reset" id="reset" value="Reset"  /></td></tr>
	</table>
</form>
    </div>
</div>

    


</body>
</html>
