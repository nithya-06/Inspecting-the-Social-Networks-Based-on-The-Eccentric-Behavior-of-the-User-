//package com.Servlet;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.awt.image.BufferedImage;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import javax.imageio.ImageIO;


import javax.servlet.*;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;




/**
 *
 * @author JAVATEAM
 */

public class Upload extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws Exception 
     */
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession ses=request.getSession();
    	
		   
    	try
    	{
    	Runtime m=Runtime.getRuntime();
Process t=m.exec("cmd /c C:/hadoop-2.3.0/sbin/start-all.cmd");
    	
    
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
    }
    }  
    
