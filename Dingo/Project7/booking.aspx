<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="Project7.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .img{
 width:60%;
 height:400px;
 border:3px solid blue;
 margin-top:15%;
 margin-left:20%;
 margin-right:15%;
        }
        body{
            display:flex;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">

        <div>
            <div class="">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="btnDOB" runat="server" ImageUrl="~/img/food_menu/calendar.png"  Width="40px" OnClick="btnDOB_Click1"  />
&nbsp;
            <asp:Calendar ID="Calendar1" runat="server" backcolor="#ffffff" bordercolor="#000000" borderwidth="2px" daynameformat="firsttwoletters" font-names="Arial" font-size="12px" height="200px" nextprevformat="shortmonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" width="250px">
                <TodayDayStyle BackColor="Black" ForeColor="White" />
                <NextPrevStyle Font-Bold="True" Font-Size="12px" ForeColor="#333333" />
                <DayHeaderStyle Font-Bold="True" Font-Size="12px" />
                <TitleStyle BorderWidth="2px" Font-Bold="True" Font-Size="14px" ForeColor="#000055" />
                <OtherMonthDayStyle ForeColor="#CCCCCC" />
            </asp:Calendar>
            <br />
            &nbsp;&nbsp;
&nbsp;<br />
            <br />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
           </div>
    </form>
</body>
</html>
