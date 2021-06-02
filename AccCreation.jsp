 <%--
    Document   : AccCreation
    Created on : Oct 12, 2011, 3:31:23 PM
    Author     : rr100345
--%>

<%@page contentType="text/html" session="true"  pageEncoding="UTF-8"%>
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
<% int i=0; %>
<script type='text/javascript' id="s1" src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=3.0.1'></script>    
<script type='text/javascript' id="s2" src='js/infinite-rotator.js'></script>
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="validNum.js"></script>
<script type="text/javascript" id="s3">

function getP(){
	   if(document.getElementById("accounttype").value == "Joint"){
             i=1;
			 document.getElementById("gnameId").style.display="inline";
		 }else{

			 document.getElementById("gnameId").style.display="none";
		 }

    

}
</script>
<!--<script>
 function Validate(){
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
  }
	
 return true;
 }
</script>-->
</head>
<body>
   
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="active"><a href="#" title="">Account</a></li>
			<!--<li><a href="Aboutus.jsp" title="">credit</a></li>
			<li><a href="contactus.jsp" title="">Loan</a></li>-->
			
                 </ul>
        </div>
    <div id="log">
        <ul id="log1">
            <li class="active"> <a href="umenu.jsp" style="color: #FFFFFF;margin-left: 75px;">Back</a>
                                <a href="index.jsp" style="color: #FFFFFF;">Logout</a> </li>
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
			<h2 class="title">login</h2>
			<div class="content">
				<p>
				</p>
				<br>
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

	<%@ include file="DBConn.jsp"%>
<%! String email = null;
%>
 <%
     try{
		  String uname = (String)session.getAttribute("USERNAME");
		  String pass = (String)session.getAttribute("PASSWORD");
		  rs =stmt.executeQuery("SELECT email FROM uregister where username='"+uname+"' and password='"+pass+"'");
		  if(rs.next()){
			  email = rs.getString(1);
		  }
 }catch(Exception ex){
	 ex.printStackTrace();
	 out.println(ex);
 }
 %>
   
	<div id="main">
		
<div id="swelcome">
    <p><img src="images/img-04.jpg" alt="1" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:125px;"   /></p>
 <p><img src="images/img-01.jpg" alt="2" class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
 <p><img src="images/img-03.jpg" alt="3"  class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
 <p><img src="images/img-05.jpg" alt="4"  class="rotating-item" width="472" height="232" style="margin-left: 600px; margin-top:125px;"   /></p>
</div>
</div>

<div align="center" style="margin-top:250px;margin-left:-400px">
   
    <p></P><p></p>
    <div>  <label for="Register">Register </label> </div>

	<p>
	  <form action="addAccoun.jsp" method="post" name="form1" >
	   <table>
	   <tr><td>UserName</td><td>:</td><td><input type="text" name="username1" id="username1" /></td></tr>

	   <tr><td>Aadtha Num</td><td>:</td><td><input type="password" name="password1" id="password" /></td></tr>

	   <!--<tr><td>Addess</td><td>:</td><td><textarea id="address" name="address"></textarea></td></tr>-->
	    <tr><td>Email</td><td>:</td><td><input type="text" name="email" id="email" /></td></tr>
		<!--<tr><td>Account Number</td><td>:</td><td><input type="text" name="accnumber" id="accnumber"  /></td></tr>
		<tr><td>PinNumber</td><td>:</td><td><input type="password" name="pinnumber" id="pinnumber"  /></td></tr>
		-->

		
		
		<tr><td>Account Type</td><td>:</td><td><input type="text" name="accounttype" id="accounttype"  value="Saving" readonly="true"/></td></tr>
		<!--<select id="accounttype"  name="accounttype" onchange="getP();" >
			 <option value="Selected" selected="selected">Selected</option>
         			  <option value="Saving">Saving</option>
         			  <!--<option value="Joint">Joint</option>
		  			  </select> </td></tr>
					<tr><td colspan=3>
					  <table id="gnameId" style="display:none">

			<tr><td>Groupname </td><td>:</td><td> <input type="text" name="groupname" id="groupname"  /></td></tr>

			<tr><td>Grouppassword</td><td>:</td><td><input type="text" name="grouppass" id="grouppass" /> </td></tr>
			</table></td>
			</tr>
			-->
			<tr><td>Initial Amount</td><td>:</td><td><input type="text" name="iniamt" id="iniamt" /> </td></tr>
			
		  <tr><td>Country</td><td>:</td><td> <select id="country" name="country">
                                  <option value="Selected" selected="selected">Selected</option>
         			  <option value="India">India</option>
         			
		  			  </select></td>
		 </tr>
		 <tr><td>State</td><td>:</td><td><select id="state" name="state">
                                  <option value="Selected" selected="selected">Selected</option>
         			  <option value="TamilNadu">TamilNadu</option>

	  </select></td></tr>
	   <!--<tr><td>Address</td><td>:</td><td><a href="Upload.jsp">Upload</a></td></tr>
	  <tr><td>Services</td><td>:</td>
		<td><input type="checkbox" value="credit" name="check" > Credit
	    <input type="checkbox" value="debit" name="check1"> Debit</td>
		
	  </tr>-->
	  

    

	  <tr><td colspan=3 align=center><input  type="submit" name="register" id="register" value="Register"  />&nbsp;&nbsp;&nbsp;<input  type="reset" name="reset" id="reset" value="Reset"  /></td></tr>
				

	   </table>

	</form>
	</p>
             
 </body>
</html>
