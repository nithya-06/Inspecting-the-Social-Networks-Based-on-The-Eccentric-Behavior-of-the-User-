<%@ page import="java.sql.*"%>
<%! Connection cons=null;
    Statement stmts=null;
	 ResultSet rss=null;
	 
%>
<%
 try{
	Class.forName("com.mysql.jdbc.Driver");
		cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/cenmachine","root","admin");
		stmts = cons.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 }catch(Exception ex){
	 out.println("Database Can not be connect"+ex);
 }
%>
