<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Project7.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="main-panel">
          <div class="content-wrapper">
              <h2 style="text-align:center"> Add Product </h2>
              <br /><br />
    <table class=" container auto-style1 table table-striped">
        <tr>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" cssclass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Product Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" cssclass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Category Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" cssclass="form-control">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click1"  class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" />
    <asp:Button ID="Button2" runat="server" Text="Cancel " class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" OnClick="Button2_Click"  />
              </div>
        </div>


    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Perfect Working',
                text: 'Your Book has been succesfully added',
                type: 'success'
            });
        }
     </script>





</asp:Content>
