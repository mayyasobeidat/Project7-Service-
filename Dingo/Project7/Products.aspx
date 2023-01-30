<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Project7.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .delete{
    color: white;
    background-color: red;
    padding: 4px;
    border: 3px solid red;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}

        .delete:hover{
        opacity:0.5;
        color:white;
    }

         .edit{
    color: white;
    background-color: green;
    padding: 4px;
    border: 3px solid green;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}

        .edit:hover{
        opacity:0.5;
        color:white;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
          <div class="content-wrapper">
<%--              //search by prodyct Name--%>
                  <h2 style="text-align:center"> Meals </h2>
              <br />

        
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Search By Product Name"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" OnClick="Button1_Click" />
             <br /><br />

        <asp:GridView ID="GridView1" class=" container table table-striped" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="nameProduct" HeaderText="Meal Name" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                <asp:BoundField DataField="description" HeaderText="Description" />
                <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Delete.aspx?id={0}" HeaderText="Delete" Text="Delete" ControlStyle-CssClass="delete" >
<ControlStyle CssClass="delete"></ControlStyle>
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Edit.aspx?id={0}" HeaderText="Edit" Text="Edit" ControlStyle-CssClass="edit" >
<ControlStyle CssClass="edit"></ControlStyle>
                </asp:HyperLinkField>
            </Columns>
                          </asp:GridView>

             <asp:GridView ID="GridView2" runat="server" class=" container table table-striped" AutoGenerateColumns="False">
                 <Columns>
                     <asp:BoundField DataField="id" HeaderText="Id" />
                     <asp:BoundField DataField="nameProduct" HeaderText="Meal Name" />
                     <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                     <asp:BoundField DataField="description" HeaderText="Description" />
                     <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="Image">
                     </asp:ImageField>
                     <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Delete.aspx?id={0}" HeaderText="Delete" Text="Delete" ControlStyle-CssClass="delete" >
<ControlStyle CssClass="delete"></ControlStyle>
                     </asp:HyperLinkField>
                     <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Edit.aspx?id={0}" HeaderText="Edit" Text="Edit" ControlStyle-CssClass="edit" >
<ControlStyle CssClass="edit"></ControlStyle>
                     </asp:HyperLinkField>
                 </Columns>
              </asp:GridView>
             <Columns>
                <%--<asp:BoundField DataField="nameProduct" HeaderText="Product Name" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                <asp:BoundField DataField="description" HeaderText="Description" />
                <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Delete.aspx?id={0}" HeaderText="Delete" Text="Delete" ControlStyle-CssClass="delete" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Edit.aspx?id={0}" HeaderText="Edit" Text="Edit" ControlStyle-CssClass="edit" />
            --%></Columns>
              </div>
        </div>

</asp:Content>
