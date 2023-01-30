﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project7.Account.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <h2>Food Menu</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!--::chefs_part start::-->
    <!-- food_menu start-->
    <section class="food_menu gray_bg">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5">
                    <div class="section_tittle">
                        <p>Popular Menu</p>
                        <h2>Delicious Food Menu</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="nav nav-tabs food_menu_nav" id="myTab" role="tablist">
                        <a class="active" id="Special-tab" data-toggle="tab" href="#Special" role="tab"
                            aria-controls="Special" aria-selected="false">Special <img src="img/icon/play.svg"
                                alt="play"></a>
                        <a id="Breakfast-tab" data-toggle="tab" href="#Breakfast" role="tab" aria-controls="Breakfast"
                            aria-selected="false">Breakfast <img src="img/icon/play.svg" alt="play"></a>
                        <a id="Launch-tab" data-toggle="tab" href="#Launch" role="tab" aria-controls="Launch"
                            aria-selected="false">Launch <img src="img/icon/play.svg" alt="play"></a>
                        <a id="Dinner-tab" data-toggle="tab" href="#Dinner" role="tab" aria-controls="Dinner"
                            aria-selected="false">Dinner <img src="img/icon/play.svg" alt="play"> </a>
                        <a id="Sneaks-tab" data-toggle="tab" href="#Sneaks" role="tab" aria-controls="Sneaks"
                            aria-selected="false">Sneaks <img src="img/icon/play.svg" alt="play"></a>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active single-member" id="Special" role="tabpanel"
                            aria-labelledby="Special-tab">
                            <div class="row">
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_2.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Roasted Marrow</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_3.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Summer Cooking</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_4.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Easter Delight</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_5.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Tiener Schnitze</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_6.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Chicken Roast</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Breakfast" role="tabpanel"
                            aria-labelledby="Breakfast-tab">
                            <div class="row">
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_4.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Easter Delight</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_5.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Tiener Schnitze</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_6.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Chicken Roast</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_2.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Roasted Marrow</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_3.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Summer Cooking</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Launch" role="tabpanel"
                            aria-labelledby="Launch-tab">
                            <div class="row">
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_2.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Roasted Marrow</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_3.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Summer Cooking</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_4.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Easter Delight</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_5.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Tiener Schnitze</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_6.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Chicken Roast</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Dinner" role="tabpanel"
                            aria-labelledby="Dinner-tab">
                            <div class="row">
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_4.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Easter Delight</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_5.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Tiener Schnitze</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_6.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Chicken Roast</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_2.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Roasted Marrow</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_3.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Summer Cooking</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Sneaks" role="tabpanel"
                            aria-labelledby="Sneaks-tab">
                            <div class="row">
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_2.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Roasted Marrow</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_3.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Summer Cooking</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_4.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Easter Delight</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_5.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Tiener Schnitze</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                    <div class="single_food_item media">
                                        <img src="img/food_menu/single_food_6.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Chicken Roast</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- food_menu part end-->
    <!--::chefs_part end::-->

    <!-- intro_video_bg start-->
    <section class="intro_video_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro_video_iner text-center">
                        <h2>Expect The Best</h2>
                        <div class="intro_video_icon">
                            <a id="play-video_1" class="video-play-button popup-youtube"
                                href="https://www.youtube.com/watch?v=pBFQdxA-apI">
                                <span class="ti-control-play"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- intro_video_bg part start-->

    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_1">
                        <h4>About Us</h4>
                        <p>Heaven fruitful doesn't over for these theheaven fruitful doe over days
                            appear creeping seasons sad behold beari ath of it fly signs bearing
                            be one blessed after.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Important Link</h4>
                        <div class="contact_info">
                            <ul>
                                <li><a href="#">WHMCS-bridge</a></li>
                                <li><a href="#"> Search Domain</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Shopping Cart</a></li>
                                <li><a href="#"> Our Shop</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Contact us</h4>
                        <div class="contact_info">
                            <p><span> Address :</span>Hath of it fly signs bear be one blessed after </p>
                            <p><span> Phone :</span> +2 36 265 (8060)</p>
                            <p><span> Email : </span>info@colorlib.com </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-8 col-md-6">
                    <div class="single-footer-widget footer_3">
                        <h4>Newsletter</h4>
                        <p>Heaven fruitful doesn't over lesser in days. Appear creeping seas</p>
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Email Address'
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
                                    <div class="input-group-append">
                                        <button class="btn" type="button"><i class="fas fa-paper-plane"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="copyright_part_text">
                <div class="row">
                    <div class="col-lg-8">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                    <div class="col-lg-4">
                        <div class="copyright_social_icon text-right">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="ti-dribbble"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->
</asp:Content>