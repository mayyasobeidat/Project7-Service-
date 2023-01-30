<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Project7.Payment" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <style>
  body{background: #f5f5f5}.rounded{border-radius: 1rem}.nav-pills .nav-link{color: #555}.nav-pills .nav-link.active{color: white}input[type="radio"]{margin-right: 5px}.bold{font-weight:bold}
.pay{
    width:60% !important;
}

  </style>

    <!-- For demo purpose -->
    <div class="row mb-4 ">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6" style="font-size:1.2rem">You must pay 10$ to confirm your reservation</h1>
        </div>
    </div> <!-- End -->
        <div class="col-lg-6 mx-auto pay">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                                                   <%-- <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />--%>
                        <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
                      
                    
                        </div>
                        <p class="text-muted">Note: If you cancel the reservation or do not show up, you will not be able to get the money back</p>
                    <!-- End -->
                </div>
           
                </div>
    </div>

</asp:Content>
