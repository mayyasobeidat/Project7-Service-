<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Project7.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
          <div class="content-wrapper">
                                <h2 style="text-align:center"> Edit </h2>
              <br /><br />

    <table   class="  auto-style1 table table-striped">
        <tr>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  cssclass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Product Image</td>
            <td>
                <asp:Image ID="Image1" runat="server" />
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
              <asp:Button ID="Button1" runat="server" Text="Update"  class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" OnClick="Button1_Click" />

              <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" OnClick="Button2_Click" />

              </div>
        </div>
</asp:Content>
