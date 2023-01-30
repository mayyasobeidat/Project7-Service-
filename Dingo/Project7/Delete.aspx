<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Project7.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
          <div class="content-wrapper">
                                <h2 style="text-align:center"> Delete </h2>

    <asp:DetailsView ID="DetailsView1"  class="table table-striped" runat="server" Height="50px" Width="125px" AutoGenerateRows="False">

              <Fields>
                   <asp:BoundField DataField="nameProduct" HeaderText="Product Name" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                <asp:BoundField DataField="description" HeaderText="Description" />
                <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
                
                </Fields>   

    </asp:DetailsView>
    
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white"/>
    
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" />
    </div>
        </div>
</asp:Content>
