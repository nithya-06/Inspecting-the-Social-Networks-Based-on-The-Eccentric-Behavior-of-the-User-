   <%-- 
    Document   : viewUserDetails
    Created on : Oct 13, 2011, 4:12:12 PM
    Author     : RR100345
--%>

<%@page import="java.util.Vector"%>
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
<%
String userid=(String)session.getAttribute("USERNAME");
%>

<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=3.0.1'></script>     
<script type='text/javascript' src='js/infinite-rotator.js'></script> 
<link href="default.css" rel="stylesheet" type="text/css" media="screen" /> 
    </head> 
<script>

   // window.history.forward();
    function noBack() { window.history.forward(); return false;}
</script>
	
<body onLoad="return noBack();"> 

   
     <div id="header"> 
	
      <div id="menu"> 
 	<ul>
 	 		<!--<li class="active"><a href="#" title="">Account</a></li> -->
			<li><a href="index.jsp" title="">Clidit</a></li> 
			<!--<li><a href="index.jsp" title="">Contact Us</a></li>-->
			
                 </ul>
        </div>
    <div id="log">
        <ul id="log1">
            <li class="active"> <a href="index.jsp" style="color: #FFFFFF;margin-left: 75px;">Logout</a><!--User Login</a> 
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
	 <h2 class="title"></h2> 
         	  <div class="content"> 
			  <%@ include file="DBConn.jsp"%>
	<%
	   try{
		    String uname = (String)session.getAttribute("USERNAME");
			//String accnumber = (String)session.getAttribute("ACCNUMBER");
			System.out.println("user........"+uname);
		  /*rs =  stmt.executeQuery("select * from mcccreation where username='"+uname+"'");
		  String type=rs.getString(5);
		  System.out.println("type..."+type);
		  if(type.equals("Joint"))
		  if(type.equals("Joint")){
			  */%>
			  <!--<br>
			  <h3><a href="Type.jsp">New Account Creation</h3>
			  <h3><a href="appCredit.jsp">Credit Request</h3>
			  <h3><a href="appDebit.jsp">Debit Request</h3>
			  <h3><a href="accNumber.jsp">View Account Details</h3>
			  <h3><a href="EditUser.jsp">Edit Account Details</h3>
			<br>-->
			<%
		  /*}
		  else{*/
			  %>
			  
		  <br>
			  <h3><a href="AccCreatio.jsp">New Account Creation</h3>
			 
			  <h3><a href="accNumbe.jsp">View Account Details</h3>
			 <!-- <h3><a href="EditUser.jsp">Edit Account Details</h3>-->
			<br>
		  <% //}
	  }catch(Exception ex){
		  ex.printStackTrace();
		  System.out.println(ex);
	  }

	  
	  %>

			  
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
		
   <div id="welcome">
      <p><img src="images/img-04.jpg" alt="1" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:125px;"   /></p>
   <p><img src="images/img-01.jpg" alt="2" class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
  <p><img src="images/img-03.jpg" alt="3"  class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
   <p><img src="images/img-05.jpg" alt="4"  class="rotating-item" width="472" height="232" style="margin-left: 600px; margin-top:125px;"   /></p>
</div>
</div>
   
<div align="center" style="margin-top:250px;margin-left:-400px;">
    
    
                                                         
        
  </div>
</div>    
    




</body>
</html>
