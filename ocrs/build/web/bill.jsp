<%-- 
    Document   : newjsp
    Created on : 28 Sep, 2016, 9:30:31 PM
    Author     : Aparna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <input type="hidden" name="email" value="${sessionScope.email}">
    </body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


 <%final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
       final String DB_URL="jdbc:mysql://localhost:3306/TEST";
       //  Database cr//edentials
       final String USER = "root";
       final String PASS = "";
       Connection  conn = null;
       Statement stmt = null;
      //String email=1.getEmail();
      PreparedStatement ps=null;
      int f=0;
       
          
               // Register JDBC driver
               Class.forName("com.mysql.jdbc.Driver");
           
           
               // Open a connection
               conn = DriverManager.getConnection(DB_URL,USER,PASS);
           
               // Execute SQL query
              String email=request.getParameter("email");
              
              String course=request.getParameter("c1");
              String ins=request.getParameter("optradio");
                 
             //   ps.executeUpdate();
              stmt = conn.createStatement();
               String sql1="select cname,ins,fee from course";
                ResultSet rs = stmt.executeQuery(sql1);
                while(rs.next())
                {
                       String c=rs.getString(1);
                       String i=rs.getString(2);
                    int fee=rs.getInt(3);
                    if((c.equals(course)) && (i.equals(ins))){
                String ps1="insert into fdetails values(?,?,?,?)";
              ps=conn.prepareStatement(ps1);
              ps.setString(1, email);
              ps.setString(2, course);
               ps.setString(3, ins);
               
               ps.setInt(4, fee);
               ps.executeUpdate();
                }
                }
             request.getRequestDispatcher("precourse.jsp").forward(request,response);
          
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
%>