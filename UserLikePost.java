/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aadhi.daoimplements;


import com.aadhi.db.DBConnection;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Allen
 */
public class UserLikePost {
  
	DBConnection db=new DBConnection();
	private Connection con = null;
	private Statement stmt = null;
	private ResultSet rs = null;
        int i=0;
        String Records="";
	byte[ ] imgData = null ;
        Blob image = null;
        boolean status=false;
        String message="";        	
        public String UserLikes(String Likes,String post,String nlikes,String plikes,long userid,String userpost){
        String status="";
        try{
        con=db.getConnection();
        if(con==null){
	System.out.println("Connection not found");
	System.exit(0);
	}else{
	stmt = con.createStatement();
        rs=stmt.executeQuery("select * from userpost_likes where user_post='"+userpost+"' and user_id='"+userid+"'");
        if(!rs.next()){
            i = stmt.executeUpdate("update user_post set p_likes=p_likes+'"+Likes+"' where post='"+post+"'"); 
       if(i>0){
           i=stmt.executeUpdate("insert into userpost_likes(n_likes, p_likes, user_id, user_post)values('"+nlikes+"','"+plikes+"','"+userid+"','"+userpost+"')");
           if(i>0){
               status="Successfully Updated";
           }
         
	       }
       else{
           status= "";            
       }
        }else{
             status= "You already Liked";  
        }
	

        }
       }catch(Exception e){
           e.printStackTrace();
           System.out.println(e);
       }
        return status;
    }
    public String UserDisLikes(String Likes,String post,String nlikes,String plikes,long userid,String userpost){
        String status="";
        try{
        con=db.getConnection();
        if(con==null){
	System.out.println("Connection not found");
	System.exit(0);
	}else{
	stmt = con.createStatement();
        rs=stmt.executeQuery("select * from userpost_likes where user_post='"+userpost+"' and user_id='"+userid+"'");
        if(!rs.next()){
            i = stmt.executeUpdate("update user_post set n_likes=n_likes+'"+Likes+"' where post='"+post+"'"); 
       if(i>0){
           i=stmt.executeUpdate("insert into userpost_likes(n_likes, p_likes, user_id, user_post)values('"+nlikes+"','"+plikes+"','"+userid+"','"+userpost+"')");
           if(i>0){
               status="Successfully Updated";
           }
         
	       }
       else{
           status= "";            
       }
        }else{
             status= "You already Liked";  
        }
	

        }
       }catch(Exception e){
           e.printStackTrace();
           System.out.println(e);
       }
        return status;
    }
                public boolean Register_GetAadhaar(String AadhaarNo){
          try{
           con=db.getConnection();
          if(con==null){
	System.out.println("Connection not found");
	System.exit(0);
	}else{
	stmt = con.createStatement();
	rs = stmt.executeQuery("select * from user_details where aadhaar_no='"+AadhaarNo+"' ");  
       
       if(!rs.next()){
         status=true;
	       }
       else{
           status= false;            
       }

        }
       }catch(Exception e){
           e.printStackTrace();
           System.out.println(e);
       }
        return status;
    }
     
              
                
    private int executeUpdate() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
