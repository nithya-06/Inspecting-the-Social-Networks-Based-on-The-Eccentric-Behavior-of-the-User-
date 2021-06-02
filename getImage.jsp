<%-- 
    Document   : getImage
    Created on : Sep 12, 2015, 11:52:53 PM
    Author     : ArunRamya
--%>


<%@page import="com.nura.dao.impl.UserDetailsDAOImpl"%>
<%@page import="com.nura.entity.UserDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Image</title>
    </head>
    <body>
        <%
            response.setContentType("image/jpg");
            String _userId = request.getParameter("usr_id");
            UserDetails _usrDtls = new UserDetailsDAOImpl().getUserDtls(Long.parseLong(_userId));
            byte[] content = _usrDtls.getUserImage();
            response.setContentType(getServletContext().getMimeType(_usrDtls.getUserName()));
            response.setContentLength(content.length);     
            response.getOutputStream().write(content);
        %>
    </body>
</html>
