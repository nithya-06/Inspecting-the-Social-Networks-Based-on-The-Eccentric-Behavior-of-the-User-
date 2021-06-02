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
<body> 
   
     <div id="header"> 
	
      <div id="menu"> 
 	<ul>
 	 		<li class="active"><a href="#" title="">Account</a></li> 
			<!--<li><a href="Aboutus.jsp" title="">About Us</a></li> 
			<li><a href="contactus.jsp" title="">Contact Us</a></li>-->
			
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
			<h2>Online Banking</h2>
			<h3>1-800-1234567</h3>
		</div>
	 <div id="login" class="boxed"> 
	 <h2 class="title">Client Account</h2> 
         	  <div class="content"> 
			  <br><br>
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
		
   <div id="welcome">
      <p><img src="images/img-04.jpg" alt="1" class="rotating-item" width="472" height="232" style="margin-left: 600px;margin-top:125px;"   /></p>
   <p><img src="images/img-01.jpg" alt="2" class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
  <p><img src="images/img-03.jpg" alt="3"  class="rotating-item" width="472" height="232" style="margin-left:600px;margin-top:125px;"   /></p>
   <p><img src="images/img-05.jpg" alt="4"  class="rotating-item" width="472" height="232" style="margin-left: 600px; margin-top:125px;"   /></p>
</div>
</div>
   
	  <p>

	  <%@ include file = "DBConn.jsp"%>
	
	<%
	   try{
		   String accno = request.getParameter("accno");
		   String pin = request.getParameter("pin");

		   rs = stmt.executeQuery("select * from acccreation  where accnumber='"+accno+"' and userName='"+pin+"'");
		   if(rs.next()){
		   String user=null;
		   rs= stmt.executeQuery("select * from acccreation where username='"+pin+"'");
		   System.out.println("orig...."+userid);
		    String acc="";
			String pass="";
		   if(rs.next()){
		   acc=rs.getString("accnumber");
		   pass=rs.getString("username");
		  System.out.println("acc...."+acc+"...pin...."+pass);
		  out.println(accno);
			out.println(acc);
			out.println(pin);
			out.println(pass);
		   }
		  
			if(1==1){
	%>		
		<div align="center" style="margin-top:250px;margin-left:-400px;">
    
    <div id="hideshow">
        <div> 
		
            <div> <label for="View Details">View Details </label> </div>
        </div>    
        <div>


		   <table>
		    
		      <tr><td>User Name</td><td>:</td><td> <input type="text" name="username" id="username" value='<%=rs.getString("username")%>' /></td></tr>
			<!--<tr><td>Address</td><td>:</td><td>  <textarea id="address" name="address"><%=rs.getString("address")%></textarea></td></tr>-->
			<tr><td>Email</td><td>:</td><td> <input type="text" name="email" id="email" value='<%=rs.getString("email")%>' /></td></tr>
			<tr><td>Account Type</td><td>:</td><td> <input type="text" name="acctype" id="acctype" value='<%=rs.getString("accounttype")%>' /></td></tr>
			<% System.out.println("type......."+rs.getString("accounttype"));%>
			<tr><td>Current Amount</td><td>:</td><td> <input type="text" name="curamt" id="curamt" value='<%=rs.getString("iniamt")%>' /></td></tr>

            
		   </table>
		    <br>
			<br>

		   <%

		       out.println("<a href=umenu.jsp>Click Here to main menu</a>");
		   %>
              
                                                         
        
  </div>
</div>    		
			
	<%		
		}
		else{
	%>

   
	<div align="center" style="margin-top:250px;margin-left:-400px;">
    
    <div id="hideshow">
        <div> 
		
            <div> <label for="View Details">Aggrasive</label> </div>
        </div>    
        <div>


		   

		   <%

		       out.println("<a href=umenu.jsp>Click Here to main menu</a>");
		   %>
              
                                                         
        
  </div>
</div>    		
		   

	<%
		}
		   }else{
			   out.println("<font color=red>Invalid Account number</font><br>");
			   out.println("<a href=umenu.jsp>Click Here to main menu</a>");
		   }
	  }catch(Exception ex){
		ex.printStackTrace();
		System.out.println(ex);
	  }
	  finally{
		rs.close();
	  }
	%>
	  
	</p>


    




</body>
</html>
