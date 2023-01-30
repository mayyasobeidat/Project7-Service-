<%@ Page Title="Home Page" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <style>
        .review_part .client_review_part:after{
            display:none;
        }
    </style>
     
    <!-- Header part end-->

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Find your favorite table with delicious dishes</h5>
                            <h1>The most delicious dishes and the best prices</h1>
                            <p>We serve the most delicious dishes so book your table with DINGO and enjoy the most delicious dishes and the lowest prices</p>
                            <div class="banner_btn">
                                <div class="banner_btn_iner">
                                    <a href="BOOKING_batool.aspx" class="btn_2">Reservation <img src="img/icon/left_1.svg" alt=""></a>
                                </div>
                                <%--<a href="pexels-vanessa-loring-5866268.mp4" class="popup-youtube video_popup">
                                    <span><img src="img/icon/play.svg" alt=""></span> Watch our story</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!--::exclusive_item_part start::-->
    <section class="exclusive_item_part blog_item_section">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Delicious Dishes</p>
                        <h2>Our Categories</h2>
                    </div>
                </div>
            </div>
                <div  class="row" id="categoryinHome" runat="server">

                </div>
        </div>
    </section>
    <!--::exclusive_item_part end::-->

    <!-- about part start-->
    <section class="about_part">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-sm-4 col-lg-5 offset-lg-1">
                    <div class="about_img">
                        <img src="img/about.png" alt="">
                    </div>
                </div>
                <div class="col-sm-8 col-lg-4">
                    <div class="about_text">
                        <h5>Our History</h5>
                        <h2>Discover the Best Dishes and Reserve Your Go-To From our Restaurant </h2>
                        <h4>Just like mom used to make. Feed your hunger</h4>
                        <p> DINGO is a website that allows users to make a reservations at our restaurants in major cities. We have a large Category of Food, users can leave reviews of their dining experiences, which can help others make informed decisions when reserving a table. </p>
                        <a href="About.aspx" class="btn_3">Read More <img src="img/icon/left_2.svg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about part end-->

    <!-- intro_video_bg start-->
    <section class="intro_video_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro_video_iner text-center">
                        <h2>Expect The Best</h2>
                        <div class="intro_video_icon">
                            <a id="play-video_1" class="video-play-button popup-youtube"
                                href="images\\video.mp4">
                                <span class="ti-control-play"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- intro_video_bg part start-->

    <!-- food_menu start-->
    <!-- food_menu part end-->

    <!--::chefs_part start::-->
    <!--::chefs_part end::-->

    <!--::regervation_part start::-->
    <!--::regervation_part end::-->

    <!--::review_part start::-->
    <section class="review_part gray_bg section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Testimonials</p>
                        <h2>Customers Feedback</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-11">
                    <div class="client_review_part owl-carousel" id="Feedback" runat="server">
                     
              
                        
                       
                    </div>
                  <div>
                   <a Class="single_page_btn" runat="server"  href="Comments.aspx">Add Comment</a>
                </div>
                  
            </div>
        </div>
    </section>
    <!--::review_part end::-->

    <!--::exclusive_item_part start::-->
    <section class="blog_item_section blog_section section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Recent News</p>
                        <h2>Latest From Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="img/blog/blog_1.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Jan 02, 2023 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="#" class="btn_3">Read More <img src="img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="img/blog/blog_2.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Jan 06, 2023 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="Foodmenue.aspx" class="btn_3">Read More <img src="img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="img/blog/blog_3.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Jan 11, 2023 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="Foodmenue.aspx" class="btn_3">Read More <img src="img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 d-none d-sm-block d-lg-none">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="img/blog/blog_1.png" alt="">
                        </div>
                        <div class="single_blog_text">
                            <div class="date">
                                <a href="#" class="date_item">Apr 06, 2019 </a>
                                <a href="#" class="date_item"> <span>#</span> Food News </a>
                            </div>
                            <h3><a href="blog.html">Adama kind deep gatherin first over fter his great</a></h3>
                            <a href="Foodmenue.aspx" class="btn_3">Read More <img src="img/icon/left_1.svg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::exclusive_item_part end::-->  

</asp:Content>
