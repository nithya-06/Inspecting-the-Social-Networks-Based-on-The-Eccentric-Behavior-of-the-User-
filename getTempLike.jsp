<%-- 
    Document   : getTempLike
    Created on : Feb 11, 2016, 2:33:19 AM
    Author     : ArunRamya
--%>

<%@page import="com.aadhi.daoimplements.UserLikePost"%>
<%@page import="com.nura.entity.UserPost"%>
<%@page import="com.nura.dao.impl.UserPostDAOImpl"%>
<%@page import="com.nura.entity.UserPostLikes"%>
<%@page import="com.nura.entity.DetailsAboutU"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
                String postRec = request.getParameter("postLiked");
                System.out.print("********************"+postRec);
                com.nura.entity.UserDetails _usrDtls = (com.nura.entity.UserDetails) session.getAttribute(constants.Constants.SESSION_USER_OBJ);
                DetailsAboutU _dtlsAbtU = new DetailsAboutU();
                //UserPostLikes _upl=new UserPostLikes();
                //UserPost _up=new UserPostDAOImpl().getUserPostBsdOnPostId(postRec);
               // _up.setPositiveLikes(_up.getPositiveLikes()+1);                
                //new UserPostDAOImpl().UpdatePostLike(postRec,"1");
               String result= new UserLikePost().UserLikes("1", postRec,"0","1",_usrDtls.getId(),postRec);
               response.sendRedirect("respPage.jsp?msg="+result);
                
                /*if (postRec.equals(constants.Constants.INITIAL_POST[0])) {
                    _dtlsAbtU.setAboutU(postRec);
                    _dtlsAbtU.setFavourites(constants.Constants.USER_LIKES[1]);
                    _dtlsAbtU.setNickName("NickName");
                    _dtlsAbtU.setUserId(_usrDtls.getId());

                    if (new com.nura.dao.impl.DetailsAbtUDAOImpl().saveDetailsAbtU(_dtlsAbtU)) {
                        //response.sendRedirect("respPage.jsp?msg=Details saved successfully");
                    } else {
                        //response.sendRedirect("respPage.jsp?msg=Unable to save the details");
                    }
                } else if (postRec.equals(constants.Constants.INITIAL_POST[1])) {
                    _dtlsAbtU.setAboutU(postRec);
                    _dtlsAbtU.setFavourites(constants.Constants.USER_LIKES[2]);
                    _dtlsAbtU.setNickName("NickName");
                    _dtlsAbtU.setUserId(_usrDtls.getId());

                    if (new com.nura.dao.impl.DetailsAbtUDAOImpl().saveDetailsAbtU(_dtlsAbtU)) {
                       // response.sendRedirect("respPage.jsp?msg=Details saved successfully");
                    } else {
                       // response.sendRedirect("respPage.jsp?msg=Unable to save the details");
                    }
                } else if (postRec.equals(constants.Constants.INITIAL_POST[2])) {
                    _dtlsAbtU.setAboutU(postRec);
                    _dtlsAbtU.setFavourites(constants.Constants.USER_LIKES[0]);
                    _dtlsAbtU.setNickName("NickName");
                    _dtlsAbtU.setUserId(_usrDtls.getId());

                    if (new com.nura.dao.impl.DetailsAbtUDAOImpl().saveDetailsAbtU(_dtlsAbtU)) {
                        //response.sendRedirect("respPage.jsp?msg=Details saved successfully");
                    } else {
                       // response.sendRedirect("respPage.jsp?msg=Unable to save the details");
                    }
                } else {
                   // response.sendRedirect("respPage.jsp?msg=Details saved successfully");
                }*/
            %>
        </h1>
    </body>
</html>
