/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import userbean.user;
import dao.signupdao;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

/**
 *
 * @author Aparna
 */
public class signupcontroller extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse res){
        try {
            res.setContentType("text/html");
            String em=req.getParameter("email");
            String pw=req.getParameter("passwd");
            user l=new user();
            l.setEmail(em);
            l.setPwd(pw);
            int flag=0;
            signupdao ld=new signupdao();
            flag=ld.userAuthentication(l);
            if(flag==1){
                req.setAttribute("email",em);
                req.getRequestDispatcher("success.jsp").forward(req, res);
            }else     
                req.getRequestDispatcher("failure.jsp").forward(req, res);
        } catch (ServletException ex) {
            Logger.getLogger(signupcontroller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(signupcontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
        
    }
    

