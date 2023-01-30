<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Project7.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   <script>
        function confirmAndRedirect(url) {
            if (confirm("Are you sure you want to proceed?")) {
                window.location = url;
            }
            return false;
        }
    </script>
 <style>
     body{
    background: #f6f9fc;
    margin-top:20px;}
/* booking */

.bg-light-blue {
    background-color: #e9f7fe !important;
    color: #3184ae;
    padding: 7px 18px;
    border-radius: 4px;
}

.bg-light-green {
    background-color: rgba(40, 167, 69, 0.2) !important;
    padding: 7px 18px;
    border-radius: 4px;
    color: #28a745 !important;
}

.buttons-to-right {
    position: absolute;
    right: 0;
    top: 40%;
}

.btn-gray {
    color: #666;
    background-color: #eee;
    padding: 7px 18px;
    border-radius: 4px;
}

.booking:hover .buttons-to-right .btn-gray {
    opacity: 1;
    transition: .3s;
}

.buttons-to-right .btn-gray {
    opacity: 0;
    transition: .3s;
}

.btn-gray:hover {
    background-color: #36a3f5;
    color: #fff;
}

.booking {
    margin-bottom: 30px;
    border-bottom: 1px solid #eee;
    padding-bottom: 30px;
}

.booking:last-child {
    margin-bottom: 0px;
    border-bottom: none;
    padding-bottom: 0px;
}


.card {
    margin-bottom: 20px;
    background-color: #fff;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
    border-radius: 4px;
    box-shadow: none;
    border: none;
    padding: 25px;
}
.mb-5, .my-5 {
    margin-bottom: 3rem!important;
}
.msg-img {
    margin-right: 20px;
}
.msg-img img {
    width: 60px;
    border-radius: 50%;
}
img {
    max-width: 100%;
    height: auto;
}
.camceled{
    
}
.con{

    width:60%;
   margin-left:auto;
   margin-right:auto;
   
}
body{
    background-image:url("images\\profile.jpg");
    background-size:cover;
    background-repeat:no-repeat;
    
    height:100vh;
}
.card-title{
    width:100%;
    text-align:center;
    font-weight:bold;
}

    
        body{margin-top:20px;}
        .avatar{
            width:200px;
            height:200px;
            }



        
@media screen and (max-width: 575px) {
    .buttons-to-right {
        top: 10%;
    }
    .buttons-to-right a {
        display: block;
        margin-bottom: 20px;
    }
    .buttons-to-right a:last-child {
        margin-bottom: 0px;
    }
    .bg-light-blue,
    .bg-light-green,
    .btn-gray {
        padding: 7px;
    }

    .con{

    width:100%;
   
}

    .buttons-to-right {
    position: static;
  
}


}

     @media screen and (max-width: 768px) {
             .con{

    width:100%;
   
}


     }
        </style> 
    
    <div class="container bootstrap snippets bootdey" style="background-color:white !important; padding:50px; width:58%; border-radius:4px;">
        <h1 class="text" >Edit Profile</h1>
        <hr>
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-9 personal-info">
                <h3>Personal info</h3>
                <asp:Panel ID="Panel1" runat="server">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Full name:</label>
                        <div class="col-lg-8">
                            <asp:Label ID="Label1" runat="server" Text="Label" class="form-control"></asp:Label>
                        </div>
                        </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Phone:</label>
                        <div class="col-lg-8">
                            <asp:Label ID="Label2" runat="server" Text="Label" class="form-control"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <asp:Label ID="Label3" runat="server" Text="Label" class="form-control"></asp:Label>
                        </div>                       
                    </div>
                     <div class="col-lg-2">
                            <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="button" OnClick="Edit_Click"/>
                        </div>
                </form>
                    </asp:Panel>

                 <asp:Panel ID="Panel2" runat="server">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Full name:</label>
                        <div class="col-lg-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextName" ErrorMessage="Fill Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextName" runat="server" class="form-control" type="text"></asp:TextBox>
                        </div>
                        </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Phone:</label>
                        <div class="col-lg-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextPhone" ErrorMessage="Fill Your Phone" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextPhone" runat="server" class="form-control" type="phone" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="TextEmail" runat="server" CssClass="form-control" type="Email" Enabled="False"></asp:TextBox>
                        </div>                       
                    </div>
                     <div class="col-lg-2">
                            <asp:Button ID="Update" runat="server" Text="Update" CssClass="button" OnClick="Update_Click"/>
                        </div>
                </form>
                    </asp:Panel>
            </div>
        </div>
    </div>
    <hr>




    
    <div class="con">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
    <div class="card card-white mb-5">
    <div class="card-heading clearfix border-bottom mb-4">
    <h2 class="card-title" style="font-size:1.75rem">My Booking</h2>
        <div class="alert alert-danger" role="alert">
 If you cancel the reservation you will lose the amount of the reservation you paid
</div>

    </div>
     <div class="card-body">
     <ul class="list-unstyled">
    <div id="reservation" runat="server">
    </div>         
      </ul>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>








                  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"> </script>

    <script>


        function confirmAndRedirect(url) {
            if (confirm("Are you sure you want to proceed?")) {
                window.location = url;
            }
            return false;
        }
    </script>
</asp:Content>
