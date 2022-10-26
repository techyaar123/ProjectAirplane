<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.servlet.http.Cookie"%>
<%

Cookie cookie = null;
Cookie[] cookies = null;

// Get an array of Cookies associated with the this domain
cookies = request.getCookies();

if( cookies != null ) {
 
   for (int i = 0; i < cookies.length; i++) {
      cookie = cookies[i];
      if((cookie.getName( )).compareTo("username") == 0 ) {
         cookie.setMaxAge(0);
         response.addCookie(cookie);
        
      }
   }
}
response.sendRedirect("index.html");
%>