<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project7.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style>
        .accordion-button:not(.collapsed) {
    color: #d80015 !important;
    background-color: #ff64263b  !important;
    box-shadow: inset 0 calc(-1 * var(--bs-accordion-border-width)) 0 #dc354557  !important;
    
    }
    </style>
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <h2>Welcome to Dingo Restaurant!</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- about part start-->
    <section class="about_part about_bg">
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
                        <h2>Where the taste of the food is as satisfying as the taste of the beverages.</h2>
                        <h4>Satisfying people hunger for simple pleasures</h4>
                        <p>We are a family-owned and operated restaurant that has been serving delicious, authentic cuisine for over 10 years. Our menu features a variety of dishes that are sure to please every palate, including appetizers, entrees, and desserts. Our restaurant is located in a convenient location and offers a comfortable and casual dining atmosphere. We take pride in our friendly and attentive service, and we're sure you'll enjoy your experience with us. We also offer a convenient online reservation service, so you can easily book a table for your next visit. Whether you're celebrating a special occasion or just looking for a delicious meal, Dingo Restaurant is the perfect choice. Thank you for considering Dingo Restaurant for your dining needs. We look forward to serving you soon!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about part end-->
        <!--::chefs_part start::-->
    <!--::chefs_part start::-->
    <section class="chefs_part blog_item_section section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Team Member</p>
                        <h2>Our Experience Chefs</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="images\\yaseed.jpeg" alt="">
                        </div>
                        <div class="single_blog_text text-center">
                            <h3>Yazeed AL-Damen</h3>
                            <p>Chef Master</p>
                            <div class="social_icon">
                                <a href="https://www.facebook.com/YazeedAldamen44"> <i class="ti-facebook"></i> </a>
                                <a href="#"> <i class="ti-twitter-alt"></i> </a>
                                <a href="#"> <i class="ti-instagram"></i> </a>
                                <a href="#"> <i class="ti-skype"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="images\\wesam.jpeg" alt="">
                        </div>
                        <div class="single_blog_text text-center">
                            <h3>Wesam Abu-Shaqra</h3>
                            <p>Chef Master</p>
                            <div class="social_icon">
                                <a href="https://www.facebook.com/wessamabushaqra"> <i class="ti-facebook"></i> </a>
                                <a href="#"> <i class="ti-twitter-alt"></i> </a>
                                <a href="#"> <i class="ti-instagram"></i> </a>
                                <a href="#"> <i class="ti-skype"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="images\\sohaib.jpeg" alt="">
                        </div>
                        <div class="single_blog_text text-center">
                            <h3>Sohaib AL-Rousan</h3>
                            <p>Chef Master</p>
                            <div class="social_icon">
                                <a href="https://www.facebook.com/soh.ros.7"> <i class="ti-facebook"></i> </a>
                                <a href="#"> <i class="ti-twitter-alt"></i> </a>
                                <a href="#"> <i class="ti-instagram"></i> </a>
                                <a href="#"> <i class="ti-skype"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 d-none d-sm-block d-lg-none">
                    <div class="single_blog_item">
                        <div class="single_blog_img">
                            <img src="img/team/chefs_1.png" alt="">
                        </div>
                        <div class="single_blog_text text-center">
                            <h3>Sohaib AL-Rousan</h3>
                            <p>Chef Master</p>
                            <div class="social_icon">
                                <a href="#"> <i class="ti-facebook"></i> </a>
                                <a href="#"> <i class="ti-twitter-alt"></i> </a>
                                <a href="#"> <i class="ti-instagram"></i> </a>
                                <a href="#"> <i class="ti-skype"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::chefs_part end::-->    <!--::review_part start::-->
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











<%--======================             faq          ==================================--%>


 <section class="chefs_part blog_item_section section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Know more</p>
                        <h2>Frequently Asked Questions</h2>
                    </div>
                </div>
            </div>



            <div class="row" <%--style="padding:0 50px;"--%> >
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">1.How do I sign up for Reserveout?</button></h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">If you check the top right corner of our website and select "Sign In", you’ll be directed to a page where you can register fill out your details, then select “Sign Up Now” to complete registration. We will send you a welcome email shortly after you create your account.</div>
                        </div>
                    </div>



  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        2. How do I edit or cancel a reservation?
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Once you sign in to your account, click your name and choose ‘Reservations’ from the list in order to be directed to the page where you can edit or cancel your reservation.</div>
    </div>
  </div>



  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        3. How do I contact Dingo?
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Just email us on info@dingo.com and we will get back to you as soon as we can.</div>
    </div>
  </div>



  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
        4. How do I make a reservation at Dingo Restaurant?
      </button>
    </h2>
    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">You can make a reservation by visiting our website and clicking on the "Reserve a Table" button. From there, you can select the date, time, and number of guests for your reservation. You can also make a reservation by calling us directly.</div>
    </div>
  </div>



                    
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
        5. What types of cuisine does Dingo Restaurant serve?
      </button>
    </h2>
    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Dingo Restaurant serves a variety of authentic cuisines, including appetizers, entrees, and desserts. Our menu changes seasonally to feature the freshest ingredients.</div>
    </div>
  </div>






                                        
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
        6. Is Dingo Restaurant wheelchair accessible?
      </button>
    </h2>
    <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Yes, our restaurant is fully accessible for guests with disabilities.</div>
    </div>
  </div>


                      <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
        7. Does Dingo Restaurant have a private room for events or special occasions?
      </button>
    </h2>
    <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Yes, we have a private room available for events and special occasions. Please contact us for more information and to book the room.</div>
    </div>
  </div>


                                          <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
        8. What are Dingo Restaurant's hours of operation?
      </button>
    </h2>
    <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Our hours of operation are from 8am to 10pm.</div>
    </div>
  </div>





</div>


            </div>
        </div>
    </section>



 
    <!--::chefs_part end::-->
  
  
</asp:Content>
