<%-- 
    Document   : index page (Home page)
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- page content -->
        <meta name="Description" content="Anime Steaming Online">
        <meta name="Author" content="Emmine Anime">
        <title>Emmine Anime - Popular Animes Streaming Online</title>
        
        <!-- Bootstrap ,CSS & Fonts -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        
    </head>
        
    <body id="page-top" lang="en">
        
            <jsp:include page="view/menu.jsp" />



        <!--iframe container-->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">                            
                            <div class="iframe"> <!-- overflow display effect -->
                                <div class="card-container">
                                    <!-- news display card 1 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- /. news display card 1 -->
                                    
                                    <!-- news display card 2 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- /. news display card 2 -->
                                    
                                    <!-- news display card 3 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- news display card 3 -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>			
        </section>                
        <!--iframe container-->

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Discover Anime</h2>
                            <p>Anime and manga have had a strong, pervasive and lasting impact on the Japanese culture in particular, and the global culture in general. The characters are a representation of the fantastic, larger-than-life and vibrant world they inhabit.</p>	
                        </div>
                    </div>
                </div>	
            </div>
        </section>		
        <!-- /.container -->

        <!-- Anime display card -->
        <section>         
            <div class="row row-0-gutter">
                <!-- start anime item1 -->
                <div class="col-md-6 col-0-gutter">
                    <div class="ot-anime-item">
                        <figure class="effect-bubba">
                            <img src="images/demo/f3bce122f452164.jpg" alt="img01" class="img-responsive" />
                            <figcaption>
                                <h2>Top 1 anime</h2>
                                <p>information1</p>
                                <a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- end anime item1 -->
                <!-- start anime item2 -->
                <div class="col-md-6 col-0-gutter">
                    <div class="ot-anime-item">
                        <figure class="effect-bubba">
                            <img src="images/demo/img-bandai01.jpg" alt="img02" class="img-responsive" />
                            <figcaption>
                                <h2>Top 2 anime</h2>
                                <p>information2</p>
                                <a href="#" data-toggle="modal" data-target="#Modal-2">View more</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- end anime item2 -->
            </div>
            <div class="row row-0-gutter">
                <!-- start anime item3 -->
                <div class="col-md-6 col-0-gutter">
                    <div class="ot-anime-item">
                        <figure class="effect-bubba">
                            <img src="images/demo/38564e26f2905a3.jpg"  alt="img03" class="img-responsive" />
                            <figcaption>
                                <h2>Top 3 anime</h2>
                                <p>information3</p>
                                <a href="#" data-toggle="modal" data-target="#Modal-3">View more</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- end anime item3 -->
                <!-- start anime item4 -->
                <div class="col-md-6 col-0-gutter">
                    <div class="ot-anime-item">
                        <figure class="effect-bubba">
                            <img src="images/demo/f9ee68e029af637.jpg" alt="img04" class="img-responsive" />
                            <figcaption>
                                <h2>Top 4 Anime</h2>
                                <p>information4</p>
                                <a href="#" data-toggle="modal" data-target="#Modal-4">View more</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- end anime item4 -->
        </section>
        <!-- Anime display card -->

        <!-- Modal for anime item 1 -->
        <div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="Modal-label-1">Anime Name</h4>
                    </div>
                    <div class="modal-body">
                        <img src="images/demo/f3bce122f452164.jpg" alt="img01" class="img-responsive" />
                        <div class="modal-works"><span>Top 1</span><span>Anime</span></div>
                        <p>Anime's information shows below...</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal for anime item 2 -->
        <div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="Modal-label-2">Anime Name</h4>
                    </div>
                    <div class="modal-body">
                        <img src="images/demo/img-bandai01.jpg" alt="img02" class="img-responsive" />
                        <div class="modal-works"><span>Top 2</span><span>Anime Title</span></div>
                        <p>Anime's information shows below...</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal for anime item 3 -->
        <div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="Modal-label-3">Anime Name</h4>
                    </div>
                    <div class="modal-body">
                        <img src="images/demo/38564e26f2905a3.jpg" alt="img03" class="img-responsive" />
                        <div class="modal-works"><span>Top 3</span><span>Anime Title</span></div>
                        <p>Anime's information shows below...</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal for anime item 4 -->
        <div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="Modal-label-4">Anime Name</h4>
                    </div>
                    <div class="modal-body">
                        <img src="images/demo/f9ee68e029af637.jpg" alt="img04" class="img-responsive" />
                        <div class="modal-works"><span>Top 4</span><span>Anime Title</span></div>
                        <p>Anime's information shows below...</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

       <jsp:include page="view/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/theme-scripts.js"></script>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
    </body>
</html>
