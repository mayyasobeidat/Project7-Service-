<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Admin_category.aspx.cs" Inherits="Project7.Admin_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

 
}

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      .sty{
          text-align:center;
          font-family:'Times New Roman';
      }

     .reject{
    color: white;
    background-color: red;
    padding: 4px;
    border: 3px solid red;
    text-decoration: none;             

    border-radius: 7px;
    font-weight: bolder;
}

     .reject:hover{
        opacity:0.5;
        color:white;
    }


        .accept{
    color: white;
    background-color: green;
    padding: 4px;
    border: 3px solid green;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}

     .accept:hover{
        opacity:0.5;
        color:white;
    }

  </style>
     <div class="main-panel">
          <div class="content-wrapper">
               <h2 style="text-align:center">Categories</h2>
               <asp:Button ID="Button1" runat="server" Text="Add Category" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white"  OnClick="Button1_Click"   />
    <br />
              <br />
              
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Category Number" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
            <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="Image" ControlStyle-Width="50" ControlStyle-Height="50">
<ControlStyle Height="50px" Width="50px"></ControlStyle>
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Admin_category_edit.aspx?id={0}" Text="Edit" ControlStyle-CssClass="accept" HeaderText="Edit" >
<ControlStyle CssClass="reject"></ControlStyle>
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="admin_category_delete.aspx?id={0}" Text="Delete" ControlStyle-CssClass="reject" HeaderText="Delete" >
<ControlStyle CssClass="accept"></ControlStyle>
            </asp:HyperLinkField>
        </Columns>
              </asp:GridView>
              
              </div>
         </div>
</asp:Content>
