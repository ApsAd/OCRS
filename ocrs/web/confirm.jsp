<%-- 
    Document   : confirm
    Created on : 29 Sep, 2016, 12:00:11 PM
    Author     : Aparna
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Course Reservation</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">
    <link href="css/mycss.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    
   
   
</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">STUDY NOW</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
<!--            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Courses</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Sign up</a>
                    </li>
		    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>-->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
<%final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
       final String DB_URL="jdbc:mysql://localhost:3306/TEST";
       //  Database cr//edentials
       final String USER = "root";
       final String PASS = "";
       Connection  conn = null;
       Statement stmt = null;
      //String email=1.getEmail();
     
          
               // Register JDBC driver
               Class.forName("com.mysql.jdbc.Driver");
           
           
               // Open a connection
               conn = DriverManager.getConnection(DB_URL,USER,PASS);
           
               // Execute SQL query
              String em=request.getParameter("email");
              
              int total=0;
             //   ps.executeUpdate();
              stmt = conn.createStatement();
               String sql1="select sum(fee) from fdetails where email='"+em+"'";
//               PreparedStatement ps=conn.prepareStatement(sql1);
//               ps.setString(1,em);
//               
                ResultSet rs = stmt.executeQuery(sql1);
                
                while(rs.next())
                {
                       total=rs.getInt(1);
                       
                }
                
 
         /* String sql;     
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
           */
%>

    

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                   <center>
        <h3>Bill Amount</h3>
        <p>UserName:${sessionScope.email}</p>
        <p>Bill Amount:<%=total%></p>
        <form action="pay.jsp">
        <button class="btn btn-default" type="submit" value="Pay to Confirm">Pay to Confirm</button>
        </form>
        </center>
                </div>
            </div>
        </div>
    </section>

    
    </body>
</html>
