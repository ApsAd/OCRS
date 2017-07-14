/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import userbean.user;
/**
 *
 * @author Aparna
 */
public class signupdao {
    public int userAuthentication(user u)
    {
       // JDBC driver name and database URL
       final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
       final String DB_URL="jdbc:mysql://localhost:3306/TEST";
       //  Database credentials
       final String USER = "root";
       final String PASS = "";
       Connection  conn = null;
       Statement stmt = null;
      //String email=1.getEmail();
      PreparedStatement ps=null;
      int f=0;
       String pwd = u.getPwd();
        String email=u.getEmail();
       System.out.print(email);
           try {
               // Register JDBC driver
               Class.forName("com.mysql.jdbc.Driver");
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(signupdao.class.getName()).log(Level.SEVERE, null, ex);
           }
           try {
               // Open a connection
               conn = DriverManager.getConnection(DB_URL,USER,PASS);
           } catch (SQLException ex) {
               Logger.getLogger(signupdao.class.getName()).log(Level.SEVERE, null, ex);
           }
           try {
               // Execute SQL query
                  String ps1="insert into user values(?,?)";
              ps=conn.prepareStatement(ps1);
              ps.setString(1, email);
              ps.setString(2, pwd);
              ps.executeUpdate();
              
           } catch (SQLException ex) {
               Logger.getLogger(signupdao.class.getName()).log(Level.SEVERE, null, ex);
           }
         /*String sql;     
         sql = "SELECT email from user";
         ResultSet rs = null;
           try {
               rs = stmt.executeQuery(sql);
           } catch (SQLException ex) {
               Logger.getLogger(signupdao.class.getName()).log(Level.SEVERE, null, ex);
           }
           try {
               // Extract data from result set
               while(rs.next())
               {
                   //Retrieve by column name
                   // int id  = rs.getInt("id");
                   //int age = rs.getInt("age");
                   String first = rs.getString("email");
                   String last=rs.getString(pwd);
                   if(email.equals(first)&& pwd.equals(last))
                   { f=1;
                   break;}
               }
           } catch (SQLException ex) {
               Logger.getLogger(signupdao.class.getName()).log(Level.SEVERE, null, ex);
           }
         if(f==1)
              return 1;         
           else
           {*/
            
              return 1;
               
           }
        }
       


