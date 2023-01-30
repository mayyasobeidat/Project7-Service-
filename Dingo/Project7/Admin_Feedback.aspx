<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Admin_Feedback.aspx.cs" Inherits="Project7.Admin_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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


     .table td {
                max-width: 250px;
                overflow-x: auto;
        }
     td{
         border-width:0px !important;
     }
       .table td::-webkit-scrollbar {
    width: 0.1em;
    height:10px;
    background-color: #f8f9fa;
}

.table td::-webkit-scrollbar-thumb {
  background-color:  #555;
}

.table td::-webkit-scrollbar-thumb:hover {
  background-color: darkorange;
}

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
          <div class="content-wrapper">
              <h2 style="text-align:center">FeedBack</h2>
              <br />
              <br />


    <asp:GridView ID="GridView1" runat="server" class="table table-striped" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="NameUser" HeaderText="User Name" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="comment1" HeaderText="Comment" HeaderStyle-Width="150px" ItemStyle-Width="150px">
<%--            <ControlStyle Width="50px" />--%>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle Width="50px" BorderWidth="10px" />
            </asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="Email" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="AcceptComment.aspx?id={0}" HeaderText="Accept" Text="Accept"  ControlStyle-CssClass="accept">
<ControlStyle CssClass="accept"></ControlStyle>
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="RejectComment?id={0}" HeaderText="Reject" Text="Reject" ControlStyle-CssClass="reject" >
<ControlStyle CssClass="reject"></ControlStyle>
            </asp:HyperLinkField>
        </Columns>
              </asp:GridView>
</div>
        </div>

</asp:Content>
