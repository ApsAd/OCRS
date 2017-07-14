<%-- 
    Document   : pay
    Created on : 22 Sep, 2016, 7:27:53 PM
    Author     : Aparna
--%>

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
    <style>
        #color{
            color: black;
        }
        </style>
        <script>
            function val(){
                var x=document.getElementById("1").value;
               
                if( x.length !== 4)
                    window.alert("Invalid Input");
            var y=document.getElementById("2").value;
               
                if( y.length !== 4)
                    window.alert("Invalid Input");
            var z=document.getElementById("3").value;
               
                if( z.length !== 4)
                    window.alert("Invalid Input");
            var w=document.getElementById("4").value;
               
                if( w.length !== 4)
                    window.alert("Invalid Input");
            
            }
            function validate()
            {
                var x=document.getElementByID("pin").value;
                if(x.length !== 4)
                    return false;
                var y=document.getElementByID("cvv").value;
                if(y.length !== 3)
                    return false;
            }
        </script>
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
    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                   <center>
                       <h2>Payment Details</h2>
                       <form id="color" action="thankyou.jsp">
                           Card No:<input type="text" id="1" size="10" onblur="val()">&nbsp; <input type="text" id="2" size="10" onblur="val()">&nbsp;<input type="text" id="3" size="10" onblur="val()">&nbsp;<input type="text" id="4"  size="10" onblur="val()"><br><br>
                           Card Holder name:<input type="text"><br><br>
                           Pin No:<input type="password" id="pin"><br><br>
                           CVV:<input type="text" id="cvv"><br><br>
                            <input type="submit" value="Pay" onclick="validate()">
                        </form>
                    </center>
                </div>
            </div>
        </div>
    </section>


   <section>
    
    </section>
</body>
</html>
