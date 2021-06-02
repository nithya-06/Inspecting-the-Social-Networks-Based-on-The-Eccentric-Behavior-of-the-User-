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
 	 		<li class="active"><a href="index.jsp" title="">Account</a></li> 
			<!--<li><a href="Aboutus.jsp" title="">About Us</a></li> 
			<li><a href="contactus.jsp" title="">Contact Us</a></li>-->
			
                 </ul>
        </div>
    <div id="log">
        <ul id="log1">
            <li class="active"> 
			<% String o=(String)session.getAttribute("Type");
		 if(o.equals("Company Admin")) {%>
			
			<a href="umenu.jsp" style="color: #FFFFFF;margin-left: 75px;">Back</a> 
		 <%} else {%>
		 <a href="nmenu.jsp" style="color: #FFFFFF;margin-left: 75px;">Back</a> 
		 <%}%>
			<a href="index.jsp" style="color: #FFFFFF;">Logout</a> </li>
        </ul>
    </div>
                   
            
</div>
<div id="content">
	<div id="sidebar">
		<div id="support">
			<h2>Finace Team</h2>
			<h3></h3>
		</div>
	 <div id="login" class="boxed"> 
	 <h2 class="title">View</h2> 
         	  <div class="content"> 
			  <br><br>
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


   
	  <p>

	  <%@ include file = "DBConn.jsp"%>
	
	
		<div align="center" style="margin-top:250px;margin-left:-400px;">
    
    <div id="hideshow">
        <div> 
		
            <div> <label for="View Details">Employee Details</label> 
			 <form action="addAccoun.jsp" method="post" name="form1" >
			 <input  type="submit" name="Sal" id="register" value="Submit"  />
			 </form></div>
        </div>    
        <div>
		<table border= 1 >
<%
	   try{
		   String accno = request.getParameter("accno");
		  
int t=1;
String f=(String)session.getAttribute("Type");
 	 //if(f.equals("Company Admin"))
			// rs = stmt.executeQuery("select * from acccreation");
		 //else
			 rs = stmt.executeQuery("select * from acccreation where dstatus='0'");
		   while(rs.next()){
		   String user=null;
		
	%>	
	
	
	<% if(t==1)   { %>
		    <th>Employee Name</th>
			<th>Employee ID</th>
			<th>Email</th>
			<th>Account Type</th>
			<th>CTC</th>
			<th>Monthly Sal</th>
			<th>Team</th>
			 <th>County</th>
			  <th>State</th>
			   <th>Banch Name</th>
		      <th>Desigination</th>
			  <th>Mobile</th>
			  <th>Account Num</th>
		<% }t=9;%>

		 <% String m=(String)session.getAttribute("Type");
		 if(m.equals("Company Admin")) {%>
			  <tr>
			<td> <%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td> <%=rs.getString(4)%></td>
			<td> <%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td>###</td>
			<td> <%=rs.getString(7)%></td>
			<td><%=rs.getString(10)%></td>
			<td> <%=rs.getString(11)%></td>
			<td> <%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
			<td>###</td></tr>

		 <%} else {%>
		 
			  <tr>
			<td>###</td>
			<td><%=rs.getString(2)%></td>
			<td>###</td>
			<td> <%=rs.getString(5)%>'</td>
			<td>###</td>
			<td><%=rs.getString("cstatus")%></td>
			<td>###</td>
			<td> ###</td>
			<td> ###</td>
			<td>###</td>
			<td>###</td>
			<td>###</td>
			<td><%=rs.getString(15)%></tr>
			
		 <%	}	
		} %>
		  </table>
		   
                                                         
        
  </div>
</div>    		
		<%
		if(1==2){
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
		   
	  }catch(Exception ex){
		ex.printStackTrace();
		System.out.println(ex);
	  }
	  finally{
		rs.close();
	  }
	%>
	  
	</p>


    


</div>
</div>
</body>
</html>
