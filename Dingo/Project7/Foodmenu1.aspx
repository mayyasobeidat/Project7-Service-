<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Foodmenu1.aspx.cs" Inherits="Project7.Foodmenu1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
    <style>
        .mydiv{
            display:flex;
            flex-direction:column;
            align-items:center;
            margin-bottom:70px;
        }
    </style>
    <section class="food_menu gray_bg">
        <div class="container">
            <div class="col-12 ">
                <div class="mydiv">
                <div class="col-lg-5">
                    <div class="section_tittle">
                        <p>Popular Menu</p>
                        <h2>Delicious Food Menu</h2>
                    </div>
                </div>
             
                <div class="col-lg-6">
                    <%-- <asp:RadioButtonList CssClass="myRadioButtonList" RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">Today</asp:ListItem>
                        <asp:ListItem Value="2">tommorow</asp:ListItem>
                        <asp:ListItem Value="3">after tommorow</asp:ListItem>
                    </asp:RadioButtonList>--%>
                    <asp:DropDownList CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Today</asp:ListItem>
                        <asp:ListItem Value="2">tommorow</asp:ListItem>
                        <asp:ListItem Value="3">after tommorow</asp:ListItem>
                    </asp:DropDownList>
                    <div class="nav nav-tabs food_menu_nav" id="myTab" style="justify-content:center;" role="tablist">
                        <a class="active" id="Special-tab" data-toggle="tab" href="#Special" role="tab"
                            aria-controls="Special" aria-selected="false">Special <img src="img/icon/play.svg"
                                alt="play"></a>
                        <a id="Breakfast-tab" data-toggle="tab" href="#Breakfast" role="tab" aria-controls="Breakfast"
                            aria-selected="false">Breakfast <img src="img/icon/play.svg" alt="play"></a>
                        <a id="Launch-tab" data-toggle="tab" href="#Launch" role="tab" aria-controls="Launch"
                            aria-selected="false">Launch <img src="img/icon/play.svg" alt="play"></a>
                        <a id="Dinner-tab" data-toggle="tab" href="#Dinner" role="tab" aria-controls="Dinner"
                            aria-selected="false">Dinner <img src="img/icon/play.svg" alt="play"> </a>
                       
                    </div>
                   
                </div>
                    </div>
                <div class="col-lg-12">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active single-member" id="Special" role="tabpanel"
                            aria-labelledby="Special-tab">
                            <div class="row">
                              
                             <div runat="server" id="mydiv" class="col-sm-12 col-lg-12 " style="display:flex; flex-wrap:wrap; gap:20px; justify-content:center;"></div>
                                    <%--     <div class="single_food_item media col-5">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>--%>
 
                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Breakfast" role="tabpanel"
                            aria-labelledby="Breakfast-tab">
                           <div class="row">
                              
                             <div runat="server" id="breakfast" class="col-sm-12 col-lg-12 " style="display:flex; flex-wrap:wrap; gap:20px; justify-content:center;"></div>
                                    <%--     <div class="single_food_item media col-5">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>--%>
 
                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Launch" role="tabpanel"
                            aria-labelledby="Launch-tab">
                           <div class="row">
                              
                             <div runat="server" id="lunch" class="col-sm-12 col-lg-12 " style="display:flex; flex-wrap:wrap; gap:20px; justify-content:center;"></div>
                                    <%--     <div class="single_food_item media col-5">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>--%>
 
                            </div>
                        </div>
                        <div class="tab-pane fade single-member" id="Dinner" role="tabpanel"
                            aria-labelledby="Dinner-tab">
                              <div class="row">
                              
                             <div runat="server" id="dinner" class="col-sm-12 col-lg-12 " style="display:flex; flex-wrap:wrap; gap:20px; justify-content:center;"></div>
                                    <%--     <div class="single_food_item media col-5">
                                        <img src="img/food_menu/single_food_1.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>Pork Sandwich</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>$40.00</h5>
                                        </div>
                                    </div>--%>
 
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
            </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>