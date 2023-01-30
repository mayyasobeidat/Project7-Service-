<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="Project7.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style>
        #input{
            height:35px;
            display:flex;
            align-items:center;
            margin-bottom:5% !important;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
          <div class="content-wrapper">
              <h2 style="text-align:center">Booking</h2>
              <br /><br />
   <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-2 mdi mdi-magnify"></i>
                </div>
<asp:TextBox ID="TextBox1" autopostback="true" runat="server" class="form-control bg-white border-2" placeholder="Search by Reservation id" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
              </div>

               <br /><br />

          <asp:GridView  class="auto-style1 table table-striped" ID="GridView1"  runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    </div>
        </div>


</asp:Content>
