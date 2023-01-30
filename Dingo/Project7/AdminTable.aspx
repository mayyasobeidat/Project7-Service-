<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AdminTable.aspx.cs" Inherits="Project7.AdminTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

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
              <h2 style="text-align:center">Available Tables</h2>
              <br />
              <br />
<%--              Admin_add_table--%>

              <asp:Button ID="Button1" runat="server" Text="Add Table" class="btn btn-block btn-lg mt-4" style="background-color:darkorange !important; color:white" OnClick="Button1_Click"    />
  
              <br />
              <br />
              
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="numberof_table" HeaderText="Number f Table" />
                    <asp:BoundField DataField="capacity" HeaderText="Capacity" />
                    <asp:BoundField DataField="flag" HeaderText="Reserved" />
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="AdminUpdateTable.aspx?id={0}" Text="Edit" ControlStyle-CssClass="accept" HeaderText="Edit" >
<ControlStyle CssClass="accept"></ControlStyle>
                    </asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Admin_table_delete.aspx?id={0}" Text="delete" ControlStyle-CssClass="reject" HeaderText="Delete" >
<ControlStyle CssClass="reject"></ControlStyle>
                    </asp:HyperLinkField>
                </Columns>
            </asp:GridView>
              </div>
        </div>
</asp:Content>
