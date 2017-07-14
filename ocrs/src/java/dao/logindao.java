/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
 import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import userbean.user;
/**
 *
 * @author Aparna
 */
public class logindao {
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
       String email = u.getEmail();
       String passwd = u.getPwd();
       try{
         // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");
         // Open a connection
         conn = DriverManager.getConnection(DB_URL,USER,PASS);
         // Execute SQL query
          stmt = conn.createStatement();
         String sql;     
         sql = "SELECT  email,pwd from user";
         ResultSet rs = stmt.executeQuery(sql);
         // Extract data from result set
         while(rs.next())
         {
            //Retrieve by column name
           // int id  = rs.getInt("id");
            //int age = rs.getInt("age");
            String first = rs.getString("email");
            String last = rs.getString("pwd");                              
           if(email.equals(first)&& passwd.equals(last))            
              return 1;         
        }
       }
       catch(SQLException se)
       {
         //Handle errors for JDBC
          se.printStackTrace();
       }
       catch(Exception e)
       {
         //Handle errors for Class.forName
         e.printStackTrace();
       }         
       return 0;
    }
    
}
