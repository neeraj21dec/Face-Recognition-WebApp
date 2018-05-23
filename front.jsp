
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/front.css" rel="stylesheet">
</head>

<body>

    <!-- Start your project here-->
   <!-- Image and text -->
<nav class="navbar navbar-dark green" style="height:100px;">
    
        
    <h1> <span class="badge black">Image processing</span></h1>
    
   
   <!-- Button trigger modal -->
 <div class="text-center">
     <button class="btn btn-elegant" type="button" class="btn btn-elegant" data-toggle="modal" data-target="#exampleModal" style="position:relative;top:-40px;">Login</button> 
   </div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    
    <form method="get" action="login.jsp">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Signin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <label>Email:</label>
                <input type="email" name="mail"/>
                 <label>Password:</label>
                <input type="password" name="pwd"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-elegant" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Login</button>
            </div>
        </div>
    </div>
        </form>
</div>
                                
                         



    
    
</nav>
        <a href="register.jsp"><button class="btn btn-elegant" style="width:150px;position:relative;left:85%;top:-90px;height:50px;" onClick="Register.jsp">Register</button></a>
<!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

    <!--Controls-->
    <div class="controls-top">
        <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
        <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
    </div>
    <!--/.Controls-->

    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
        <li data-target="#multi-item-example" data-slide-to="1"></li>
        <li data-target="#multi-item-example" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">

            <div class="col-md-4">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(34).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(18).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(35).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

        </div>
        <!--/.First slide-->

        <!--Second slide-->
        <div class="carousel-item">

            <div class="col-md-4">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(47).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(48).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

        </div>
        <!--/.Second slide-->

        <!--Third slide-->
        <div class="carousel-item">

            <div class="col-md-4">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(53).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(45).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 clearfix d-none d-md-block">
                <div class="card">
                    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(51).jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>

        </div>
        <!--/.Third slide-->

    </div>
    <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->
    <br/>
    <div class="wanna">
        <h4>  You wanna upload your pictures? <span class="badge black"><a href="register.jsp">Register</a></span> with us and share your pictures and tag peoples.</h4>
  </div>
                  
    <!--Footer-->
<footer class="page-footer green center-on-small-only">

    <!--Footer Links-->
    <div class="container-fluid">
        <div class="row">

            <!--First column-->
            <div class="col-md-6">
                <h5 class="title">Footer Content</h5>
                <p>Here you can use rows and columns here to organize your footer content.</p>
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-6">
                <h5 class="title">Links</h5>
                <ul>
                    <li><a href="#!">Link 1</a></li>
                    <li><a href="#!">Link 2</a></li>
                    <li><a href="#!">Link 3</a></li>
                    <li><a href="admin%20login.jsp">Admin Login</a></li>
                </ul>
            </div>
            <!--/.Second column-->
        </div>
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            © 2015 Copyright: <a href="https://www.MDBootstrap.com"> MDBootstrap.com </a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
                
    
                        
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>

