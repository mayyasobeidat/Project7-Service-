<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="Project7.AdminUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


    <style>
    .reject {
    color: white;
    background-color: red;
    padding: 4px;
    border: 3px solid red;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}

    .reject:hover{
        opacity:0.5;
        color:white;
    }

    .accept {
    color: white;
    background-color: green;
    padding: 4px;
    border: 3px solid green;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}

     .accept:hover{
        opacity:0.5;
        color:white;
    }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="main-panel">
          <div class="content-wrapper">
           
               <h2 style="text-align:center">Users</h2>
              <br />
              <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
        <Columns>
<%--            <asp:BoundField DataField="NameUser" HeaderText="User Name" />--%>
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AdminUsersDelete.aspx?id={0}" Text="Delete" ControlStyle-CssClass="reject" HeaderText="Delete" >
<ControlStyle CssClass="reject"></ControlStyle>
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
</div></div>
</asp:Content>
