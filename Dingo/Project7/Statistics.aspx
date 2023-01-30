<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="Project7.Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
  <style>
     .card{
         height:153.5px;
         font-size:30px;
         margin-bottom:10% !important;
         box-shadow:1px 1px 2px 1.75px  darkorange;
     }
  
  </style>

       <div class="main-panel">
          <div class="content-wrapper">
              <h2 style="text-align:center">Statistics</h2>
              <br />
              <br />
              <div class="container" >
<%--    <div class="containerstats">--%>
<div class="col-md-12 ">
    <div class="row ">
        
        <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-blue-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"><i class="fas fa-users"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Number Of Users</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                    
                    </div>
                 
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-green-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large">
                        
                        <i class="fas fa-chair"></i>
                       </div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Total Reservation</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                     
                    </div>
                  
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-orange-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large">
                         <i class="fas fa-ticket-alt"></i>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Number Of Tables</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                    </div>
                  
                </div>
            </div>
        </div>

    </div>
</div>
    
        <div class="row ">
              <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-cherry">
                <div class="card-statistic-3 p-4 con">
                    <div class="card-icon card-icon-large"><i class="fas fa-box"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Number OF Category</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                       
                    </div>


                   

                </div>
            </div>
        </div>
               <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-cherry">
                <div class="card-statistic-3 p-4 con">
                    <div class="card-icon card-icon-large"><i class="fas fa-hamburger"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Number types Of Food</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                       
                    </div>
            </div>


    </div>

              </div>
   

    <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-cherry">
                <div class="card-statistic-3 p-4 con">
                    <div class="card-icon card-icon-large"><i class="fas fa-comment"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0" style="font-size:0.9rem ">Number of Feedback</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </h2>
                        </div>
                       
                    </div>
                   

                </div>
            </div>
        </div>
</div>
    </div></div>
    </div>
           </div>
    </div>

</asp:Content>
