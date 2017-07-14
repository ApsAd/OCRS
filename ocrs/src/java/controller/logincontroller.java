/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import userbean.user;
import dao.logindao;
/**
 *
 * @author Aparna
 */
public class logincontroller extends HttpServlet {
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
  {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String uname=request.getParameter("email");
      String upasswd=request.getParameter("passwd");
      user u=new user();      
      u.setEmail(uname);
      u.setPwd(upasswd);
      int flag=0;
      logindao ld=new logindao();
      flag=ld.userAuthentication(u);    
      HttpSession s=request.getSession(true);
      if(flag==1)
      {
            s.setAttribute("email",uname);
             request.getRequestDispatcher("success.jsp").include(request, response);
      }else
          request.getRequestDispatcher("failure.jsp").forward(request, response);     
   }
}
