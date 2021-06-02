<%-- 
    Document   : displayPostImg
    Created on : Jan 16, 2016, 9:26:49 PM
    Author     : ArunRamya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setContentType("image/jpg");
            int postId = Integer.parseInt(request.getParameter("post_id"));
            com.nura.entity.UserPost _userPost = new com.nura.dao.impl.UserPostDAOImpl().getUserPostBsdOnId(postId);
            byte[] content = _userPost.getPostImg();
            response.setContentType(getServletContext().getMimeType(_userPost.getImageName()));
            response.setContentLength(content.length);
            response.getOutputStream().write(content);
            
        %>
    </body>
</html>
