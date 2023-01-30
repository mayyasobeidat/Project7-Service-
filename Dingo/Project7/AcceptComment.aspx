<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AcceptComment.aspx.cs" Inherits="Project7.AcceptComment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
          <div class="content-wrapper">
    <asp:DetailsView ID="DetailsView1" runat="server" class="container auto-style1 table table-striped table-hover table-condensed" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="NameUser" HeaderText="User Name" />
            <asp:BoundField DataField="UserName" HeaderText="Email" />
            <asp:BoundField DataField="comment1" HeaderText="Comment" />
        </Fields>
    </asp:DetailsView>
            <asp:Button ID="Button1" runat="server" Text="Accept" OnClick="Button1_Click" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click"  class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white"/>

              </div>
            </div>
</asp:Content>
