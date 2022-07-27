<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>



<!DOCTYPE html>
<html>
<head>
    <title>NewsFeed</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="HaberSitesi/newsfeed/assets/css/animate.css" rel="stylesheet" />
    <link href="HaberSitesi/newsfeed/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="HaberSitesi/newsfeed/assets/css/font-awesome.min.css" rel="stylesheet" />

    <link href="HaberSitesi/newsfeed/assets/css/font.css" rel="stylesheet" />
    <link href="HaberSitesi/newsfeed/assets/css/jquery.fancybox.css" rel="stylesheet" />

    <link href="HaberSitesi/newsfeed/assets/css/li-scroller.css" rel="stylesheet" />

    <link href="HaberSitesi/newsfeed/assets/css/slick.css" rel="stylesheet" />
    <link href="HaberSitesi/newsfeed/assets/css/style.css" rel="stylesheet" />

    <link href="HaberSitesi/newsfeed/assets/css/theme.css" rel="stylesheet" />

    <link href="StyleSheet.css" rel="stylesheet" />

    <!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->

    <style>

        
element.style {
}
.photo_grid figure {
    position: relative;
    float: left;
    overflow: hidden;
    margin: 10px 1%;
    margin-top: 0;
    height: 150px;
    width: 100%;
    background: #ffffff;
    text-align: center;
    cursor: pointer;
}
    </style>


</head>
<body>
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <div class="container">
        <header id="header">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="header_top">
                        <div class="header_top_left">
                            <ul class="top_nav">
                                <li><a href="AnaSayfa.aspx">ANASAYFA</a></li>
                                <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                                <li><a href="iletisim.aspx">İLETİŞİM</a></li>
                            </ul>
                        </div>
                        <div class="header_top_right">
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="header_bottom">
                        <div class="logo_area">

                            <asp:Repeater ID="Repeater13" runat="server">
                                <ItemTemplate>

                                    <a href="AnaSayfa.aspx" class="logo">

                                        <img src="<%#Eval("Logo") %>" style="width: 300px; height: 50px" alt=""></a>

                                </ItemTemplate>
                            </asp:Repeater>

                        </div>

                    </div>
                </div>
            </div>
        </header>
        <section id="navArea">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>



                <div id="navbar" class="navbar-collapse collapse">


                    <ul class="nav navbar-nav main_nav">

                        <li class="active"><a href="AnaSayfa.aspx"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>




                        <asp:Repeater ID="Repeater12" runat="server">
                            <ItemTemplate>



                                <li><a href="Haberler.aspx?HaberKategoriid=<%#Eval("HaberKategoriid") %>"><%#Eval("HaberKategoriAd") %></a></li>

                            </ItemTemplate>
                        </asp:Repeater>

                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MOBİL</a>

                            <ul class="dropdown-menu" role="menu">

                                <asp:Repeater ID="Repeater19" runat="server">
                                    <ItemTemplate>

                                        <li><a href="Haberler.aspx?HaberKategoriid=<%#Eval("HaberKategoriid") %>"><%#Eval("HaberKategoriAd") %></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>


                        </li>
                    </ul>

                </div>





            </nav>
        </section>
        <section id="newsSection">

            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="latest_newsarea">
                        <span>En Son Haber</span>

                        <ul id="ticker01" class="news_sticker">

                            <asp:Repeater ID="Repeater11" runat="server">
                                <ItemTemplate>

                                    <li><a href="HaberlerDetay.aspx?Haberid=<%#Eval("HaberKategoriid") %>">
                                        <img src="<%#Eval("HaberResim") %>" alt=""><%#Eval("HaberBaslik") %></a></li>



                                </ItemTemplate>


                            </asp:Repeater>

                        </ul>

                        <div class="social_area">
                            <ul class="social_nav">
                                <li class="facebook"><a href="#"></a></li>
                                <li class="twitter"><a href="#"></a></li>
                                <li class="youtube"><a href="#"></a></li>
                                <li class="mail"><a href="#"></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="sliderSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">

                    <div class="slick_slider">
                        <asp:Repeater ID="Repeater10" runat="server">
                            <ItemTemplate>
                                <div class="single_iteam">




                                    <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">
                                        <img src="<%#Eval("HaberResim") %>" alt=""></a>

                                    <div class="slider_article">

                                        <h2><a class="slider_tittle" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a></h2>

                                        <p><%#Eval("HaberBaslik") %></p>


                                    </div>
                                </div>
                            </ItemTemplate>

                        </asp:Repeater>


                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="latest_post">

                        <h2><span>EN SON GÖNDERİ</span></h2>


                        <div class="latest_post_container">

                            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>

                            <ul class="latest_postnav">

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <li>

                                            <div class="media">


                                                <a class="media-left" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">
                                                    <img src="<%#Eval("HaberResim") %>" alt=""></a>

                                                <div class="media-body"><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a></div>


                                            </div>

                                        </li>

                                    </ItemTemplate>

                                </asp:Repeater>
                            </ul>
                            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="contentSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="left_content">

                        <div class="single_post_content">
                            <h2><span>SAĞLIK</span></h2>
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig">

                                            <asp:Repeater ID="Repeater2" runat="server">
                                                <ItemTemplate>



                                                    <a class="featured_img" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">
                                                        <img alt="" src="<%#Eval("HaberResim") %>">
                                                        <span class="overlay"></span></a>
                                                    <figcaption><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </figcaption>
                                                    <p><%#Eval("HaberBaslik") %></p>





                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </figure>

                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
                                                <div class="media wow fadeInDown">

                                                    <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="media-left">
                                                        <img alt="" src="<%#Eval("HaberResim") %>">
                                                    </a>
                                                    <div class="media-body"><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a></div>

                                                </div>
                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </li>

                                </ul>
                            </div>
                        </div>


                        <div class="fashion_technology_area">
                            <div class="fashion">
                                <div class="single_post_content">
                                    <h2><span>TEKNOLOJİ</span></h2>
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <asp:Repeater ID="Repeater4" runat="server">
                                                <ItemTemplate>

                                                    <figure class="bsbig_fig">

                                                        <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="featured_img">
                                                            <img alt="" src="<%#Eval("HaberResim") %>">

                                                            <span class="overlay"></span></a>
                                                        <figcaption><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </figcaption>
                                                        <p><%#Eval("HaberBaslik") %></p>
                                                    </figure>



                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <asp:Repeater ID="Repeater5" runat="server">
                                                <ItemTemplate>
                                                    <div class="media wow fadeInDown">

                                                        <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="media-left">
                                                            <img alt="" src="<%#Eval("HaberResim") %>">
                                                        </a>
                                                        <div class="media-body"><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </div>


                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="technology">
                                <div class="single_post_content">
                                    <h2><span>BİLGİSAYAR</span></h2>
                                    <ul class="business_catgnav">
                                        <li>


                                            <asp:Repeater ID="Repeater6" runat="server">
                                                <ItemTemplate>

                                                    <figure class="bsbig_fig">

                                                        <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="featured_img">
                                                            <img alt="" src="<%#Eval("HaberResim") %>">

                                                            <span class="overlay"></span></a>
                                                        <figcaption><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </figcaption>
                                                        <p><%#Eval("HaberBaslik") %></p>
                                                    </figure>



                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <asp:Repeater ID="Repeater7" runat="server">
                                                <ItemTemplate>



                                                    <div class="media wow fadeInDown">

                                                        <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="media-left">
                                                            <img alt="" src="<%#Eval("HaberResim") %>">
                                                        </a>
                                                        <div class="media-body"><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </div>


                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_post_content">
                            <h2><span>FOTOĞRAFLAR</span></h2>

                            <asp:Repeater ID="Repeater15" runat="server">
                                <ItemTemplate>
                                    <ul class="photograph_nav  wow fadeInDown">

                                        <li>
 
                                            <div class="photo_grid">

                                                <figure class="effect-layla">


                                                    <a class="fancybox-buttons" data-fancybox-group="button" href="<%#Eval("HaberResim") %>" title="<%#Eval("HaberBaslik") %>">
                                                        <img src="<%#Eval("HaberResim") %>" style="height:100px; "  alt="" /></a>

                                                </figure>

                                            </div>

                                        </li>


                                    </ul>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <div class="single_post_content">
                            <h2><span>BİLİM</span></h2>
                            <div class="single_post_content_left">
                                <ul class="business_catgnav">
                                    <li>
                                        <asp:Repeater ID="Repeater8" runat="server">
                                            <ItemTemplate>
                                                <figure class="bsbig_fig  wow fadeInDown">
                                                    <a class="featured_img" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">
                                                        <img src="<%#Eval("HaberResim") %>" alt="">
                                                        <span class="overlay"></span></a>
                                                    <figcaption><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="catg_title"><%#Eval("HaberBaslik") %></a> </figcaption>
                                                    <p><%#Eval("HaberBaslik") %></p>
                                                </figure>



                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>

                                        <asp:Repeater ID="Repeater9" runat="server">
                                            <ItemTemplate>
                                                <div class="media wow fadeInDown">

                                                    <a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="media-left">
                                                        <img alt="" src="<%#Eval("HaberResim") %>">
                                                    </a>
                                                    <div class="media-body"><a href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>" class="catg_title"><%#Eval("HaberBaslik") %></a> </div>
                                                </div>


                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <aside class="right_content">
                        <div class="single_sidebar">
                            <h2><span>POPÜLER GÖNDERİ</span></h2>
                            <ul class="spost_nav">
                                <asp:Repeater ID="Repeater14" runat="server">
                                    <ItemTemplate>
                                        <li>


                                            <div class="media wow fadeInDown">

                                                <a class="media-left" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">

                                                    <img alt="" src="<%#Eval("HaberResim") %>">
                                                </a>
                                                <div class="media-body"><a class="catg_title" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid ") %>"><%#Eval("HaberBaslik") %></a> </div>




                                            </div>

                                        </li>

                                    </ItemTemplate>

                                </asp:Repeater>

                            </ul>
                        </div>
                        <div class="single_sidebar">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#category" aria-controls="home" role="tab" data-toggle="tab">Category</a></li>
                                <li role="presentation"><a href="#video" aria-controls="profile" role="tab" data-toggle="tab">Video</a></li>

                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="category">

                                    <asp:Repeater ID="Repeater16" runat="server">
                                        <ItemTemplate>

                                            <ul>

                                                <li class="cat-item"><a href="Haberler.aspx?HaberKategoriid=<%#Eval("HaberKategoriid") %>"><%#Eval("HaberKategoriAd") %></a></li>


                                            </ul>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                </div>
                                <div role="tabpanel" class="tab-pane" id="video">
                                    <div class="vide_area">
                                        <iframe width="100%" height="250" src="https://www.youtube.com/watch?v=xj5srbfNMLk&t=96s" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="comments">
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="HaberSitesi/newsfeed/images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="HaberSitesi/newsfeed/images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="HaberSitesi/newsfeed/images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="HaberSitesi/newsfeed/images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single_sidebar wow fadeInDown">
                            <h2><span>Sponsor</span></h2>


                            <asp:Repeater ID="Repeater17" runat="server">
                                <ItemTemplate>

                                    <a class="sideAdd" href="<%#Eval("Sponsor") %>">
                                        <img src="<%#Eval("SponsorResim") %>" alt=""></a>


                                </ItemTemplate>

                            </asp:Repeater>

                        </div>

                    </aside>
                </div>
            </div>
        </section>
        <footer id="footer">
            <div class="footer_top">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInLeftBig">
                            <h2>Flickr Images</h2>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInDown">
                            <h2>Tag</h2>
                            <asp:Repeater ID="Repeater18" runat="server">
                                <ItemTemplate>

                                    <ul class="tag_nav">
                                        <li><a href="Haberler.aspx?HaberKategoriid=<%#Eval("HaberKategoriid") %>"><%#Eval("HaberKategoriAd") %></a></li>

                                    </ul>
                                </ItemTemplate>

                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInRightBig">
                            <h2>Contact</h2>

                            <address>
                               1238 Sk İZMİR|KONAK Phone: 123-326-789 Fax: 123-546-567
                            </address>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bottom">
                <p class="copyright">TELİF HAKKI &copy; 2022 <a href="https://berkaydagdelen.com/">BERKAY DAĞDELEN</a></p>
             
            </div>
        </footer>
    </div>

    <script src="HaberSitesi/newsfeed/assets/js/jquery.min.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/wow.min.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/bootstrap.min.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/slick.min.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/jquery.li-scroller.1.0.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/jquery.newsTicker.min.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/jquery.fancybox.pack.js"></script>
    <script src="HaberSitesi/newsfeed/assets/js/custom.js"></script>


</body>
</html>

