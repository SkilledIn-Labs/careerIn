<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>CodePen - Team member profile display</title>
        <link rel="stylesheet" href="assets\css\team.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous" />

        <link rel="stylesheet" type="text/css" href="assets/css/menu.css">

    </head>

    <body>
        <nav class="main-menu">
            <div>
                <a class="logo" href="/index.jsp">
                </a>
            </div>
            <div class="settings"></div>
            <div class="scrollbar" id="style-1">
                <ul>
                    <li>
                        <a href="/index.jsp">
                            <i class="fa fa-home fa-lg"></i>
                            <span class="nav-text">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="/login.jsp">
                            <i class="fa fas fa-user fa-lg"></i>
                            <span class="nav-text">Login</span>
                        </a>
                        <li>
                            <a href="/team.jsp">
                                <i class="fa fa-envelope-o fa-lg fas fa-users"></i>
                                <span class="nav-text">Team</span>
                            </a>
                        </li>





                        <li>

                            <a href="/about.jsp">
                                <i class="fa fa-question-circle fa-lg"></i>
                                <span class="nav-text">About Us</span>
                            </a>
                        </li>





                        <li>
                            <a href="http://startific.com">
                                <i class="fa fa-heart-o fa-lg fas fa-envelope"></i>

                                <span class="share"> 


<div class="addthis_default_style addthis_32x32_style">

<div style="position:absolute;
margin-left: 56px;top:3px;"> 




<a href="https://www.facebook.com/sharer/sharer.php?u=" target="_blank" class="share-popup">
<!-- <i class="share-popup fab fa-facebook-square"></i> -->
<img src="http://icons.iconarchive.com/icons/danleech/simple/512/facebook-icon.png" width="30px" height="30px"></a>

<a href="https://twitter.com/share" target="_blank" class="share-popup"><img src="https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/Twitter_alt.png" width="30px" height="30px"></a>




<a href="https://plusone.google.com/_/+1/confirm?hl=en&url=_URL_&title=_TITLE_
" target="_blank" class="share-popup"><img src="http://icons.iconarchive.com/icons/danleech/simple/512/google-plus-icon.png" width="30px" height="30px"></a>   



</div>
<!-- <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ff17589278d8b3a"></script>
                   
                        
                          
                        
                       -->
                    </span>
                                <span class="twitter"></span>
                                <span class="google"></span>
                                <span class="fb-like">  
<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fstartific&amp;width&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:35px;" allowTransparency="true"></iframe>
                   
                    </span>
                                <span class="nav-text">
                    </span>

                            </a>

                        </li>




                    </li>
                    <ul class="about">
                        <li>
                            <a href="/perform_logout">
                                <class class="fa  fas fa-sign-out-alt"></class>
                                </i>
                                <span class="nav-text">
                            logout 
                        </span>

                            </a>
                        </li>
                    </ul>



        </nav>

        <!-- partial:index.partial.html -->
        <!-- Our team Section -->
        <section id="team" class="team content-section">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h2>Our Team</h2>
                        <h3 class="caption gray">Meet the people who make awesome stuffs</h3>
                    </div>
                    <!-- /.col-md-12 -->

                    <div class="container">
                        <div class="row">

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/raj_full_stack.jpeg?st=2021-06-02T20%3A03%3A26Z&se=2023-06-03T20%3A03%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=LznuLVpoYXwZwspf8Rz4ZgcyQd1J0zjRiqpSEtEi%2FzU%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae asperiores mollitia.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>Utkarsh Raj</h4>
                                    <p>Creative Director/Full Stack Developer</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/yash_webdeveloper_2.jpg?st=2021-06-02T20%3A03%3A47Z&se=2023-06-03T20%3A03%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=Kg6v3k5ebriSN1rTqF9iyQBU8zylgHkxllnjLQ1YtLE%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Neque minima ea, a praesentium saepe nihil maxime quod esse numquam explicabo eligendi.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>Yahshwant Narayan</h4>
                                    <p>UI/UX Designer</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/sid.JPG?st=2021-06-02T20%3A03%3A02Z&se=2023-06-03T20%3A03%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=%2BFemDIxJ3txMIA5o69C07BwTKGIbpogwhJvTdd0%2BdQ8%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Temporibus dolor, quisquam consectetur molestias, veniam voluptatum. Beatae alias omnis totam.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>Sidharth Gupta</h4>
                                    <p>Data Scientist/Content Writer</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->


                            <!-- /.col-md-4 -->

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/soda.jpeg?st=2021-06-02T20%3A00%3A29Z&se=2023-12-03T20%3A00%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=Y5EU5KLeEcS21pY%2BMDUWx7s5A1SQpeA%2FJXbdXSdxEjI%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Temporibus dolor, quisquam consectetur molestias, veniam voluptatum. Beatae alias omnis totam.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>Sodagar Hemberom</h4>
                                    <p>Web Developer</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->
                            <!-- /.col-md-4 -->

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/sonu.jpg?st=2021-06-02T20%3A01%3A22Z&se=2023-12-03T20%3A01%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=PnwYxW1BJR8%2FsSPUAZi%2FlmqCld2%2BS2QT2TwvLRwuDro%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Temporibus dolor, quisquam consectetur molestias, veniam voluptatum. Beatae alias omnis totam.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>Sonu Tudu</h4>
                                    <p>Web Developer</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->

                            <!-- /.col-md-4 -->

                            <div class="col-md-4">
                                <div class="team-member">
                                    <figure>
                                        <img src="https://skilledin.file.core.windows.net/pics/prof.jpeg?st=2021-06-02T20%3A02%3A22Z&se=2023-12-03T20%3A02%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=igMSpXnplSAdDP1pZutysjiE45ZfTm4Srpm5gSXLR0Q%3D" alt="" class="img-responsive pics">
                                        <figcaption>
                                            <p>Temporibus dolor, quisquam consectetur molestias, veniam voluptatum. Beatae alias omnis totam.</p>
                                            <ul>
                                                <li><a href=""><i class="fab fa-facebook-f fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-whatsapp fa-2x"></i></a></li>
                                                <li><a href=""><i class="fab fa-linkedin-in fa-2x"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <h4>A Ranjith</h4>
                                    <p>Prof in-charge</p>
                                </div>
                                <!-- /.team-member-->
                            </div>
                            <!-- /.col-md-4 -->


                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container -->

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
        <!-- /.our-team -->
        <!-- partial -->

    </body>

    </html>