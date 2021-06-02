 <%@page import="com.nura.sms.SendSMS"%>
<%--
    Document   : AccCreation
    Created on : Oct 12, 2011, 3:31:23 PM
    Author     : rr100345
--%>

<%@ page import="java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.SQLException"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Random.*" language="java"%>
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
<script type='text/javascript' id="s1" src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=3.0.1'></script>    
<script type='text/javascript' id="s2" src='js/infinite-rotator.js'></script>
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" id="s3">

function getP(){
	   if(document.getElementById("accounttype").value == "Joint"){

			 document.getElementById("gnameId").style.display="inline";
		 }else{

			 document.getElementById("gnameId").style.display="none";
		 }
		 
    

}
</script>
</head>
<body>
 


	<%@ include file = "DBConn.jsp"%>
        <%@ include file = "DBConns.jsp"%>
	
	<%! String groupname = "";
	    String grouppass = "";
		//long accno = 0;
                public String u,pa,email,acctype,initamount,account,county,state,bname,dis,pincode;
	%>
	<%
	   try{
		   u = request.getParameter("username1");
		   pa = request.getParameter("password1");
		   //String address = request.getParameter("address");
		   email = request.getParameter("email");
                   //String accnumber = null;//request.getParameter("accnumber");
		  // String pinnumber = null;//request.getParameter("pinnumber");
		   acctype = request.getParameter("accounttype");
		   initamount = request.getParameter("iniamt");
		   //account = request.getParameter("aperson");
		   county = request.getParameter("country");
		   state = request.getParameter("state");
		   //bname = request.getParameter("branch");..
		   //dis = request.getParameter("district");
		   //pincode = request.getParameter("pincode");
                  
                   java.util.Random o1=new java.util.Random();
                   int t1=o1.nextInt(99);
                   if(t1<=9)
                       t1=t1+10;
                   out.println("t1:"+t1);
                   int t2=o1.nextInt(99);
                   if(t2<=9)
                       t2=t1+10;
                   int t3=o1.nextInt(99);
                   if(t3<=9)
                       t3=t1+10;
                   out.println("t2:"+t2);
                   out.println("t3:"+t3);
                   String ots=String.valueOf(t1)+String.valueOf(t2)+String.valueOf(t3);
                      
      try{
		    
			rss = stmts.executeQuery("select Mobile1, Mobile2, Mobile3 from maintable where Aadtha='"+pa+"'");
			if(rss.next()){
				String MobileNo1=rss.getString(1);
                                String MobileNo2=rss.getString(2);
                                String MobileNo3=rss.getString(3);
                                        SendSMS sendsms=new SendSMS();
                                        sendsms.sendSMS(MobileNo1, "OTP "+String.valueOf(t1));
                                        sendsms.sendSMS(MobileNo2, "OTP "+String.valueOf(t2));
                                        sendsms.sendSMS(MobileNo3, "OTP "+String.valueOf(t3));
			}else{
				

			}

   }catch(Exception ex){
	   ex.printStackTrace();
	   System.out.println(ex);
   }
   
                   
                   
                   
    out.println("ots:"+ots);
    
    session.setAttribute("u", u);
    session.setAttribute("pa", pa);
    session.setAttribute("county", county);
    session.setAttribute("email", email);
    session.setAttribute("acctype", acctype);
    session.setAttribute("initamount", initamount);
    session.setAttribute("state", state);
    session.setAttribute("ots", ots);%>
    
        <%
   // response.sendRedirect("addAccount.jsp");
                   %>
                 
			<%


	  }catch(Exception ex){
		ex.printStackTrace();
		System.out.println(ex);
	  }
	  finally{
		// rs.close();
		//  rs1.close();
	  }
	%>
	  <div align="center" style="margin-top:250px;margin-left:-400px;">
    
    <div id="hideshow">
        <div> 
            <div> <label for="addAccount.jsp">OTP</label> </div>
        </div>    
        <div>


	<p>
	  <form action="addAccount.jsp" name="form1">
	  <table>

		<tr><td>OTP:</td><td><input type = "text" values= "otp" name="otp"></td></tr>
		<tr><td><input type="submit" values="submit" name="submit"></td></tr>

		
	  </table>
	  </form>

	</p>
              
                                                         
        
  </div>
</div>    
	
             
 </body>
</html>
