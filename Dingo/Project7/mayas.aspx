<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mayas.aspx.cs" Inherits="Project7.mayas" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:Button ID="btnDOB" Runat="server" Text="..." OnClick="btnDOB_Click"></asp:Button>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"  backcolor="#ffffff" width="250px" height="200px" 
  font-size="12px" font-names="Arial" borderwidth="2px"
  bordercolor="#000000" nextprevformat="shortmonth" 
  daynameformat="firsttwoletters"  Visible="False">


                 <TodayDayStyle ForeColor="White" BackColor="Black"></TodayDayStyle>
  <NextPrevStyle Font-Size="12px" Font-Bold="True" ForeColor="#333333">
  </NextPrevStyle>
  <DayHeaderStyle Font-Size="12px" Font-Bold="True"></DayHeaderStyle>
  <TitleStyle Font-Size="14px" Font-Bold="True" BorderWidth="2px"
     ForeColor="#000055"></TitleStyle>
  <OtherMonthDayStyle ForeColor="#CCCCCC"></OtherMonthDayStyle>
            </asp:Calendar>
        </div>
                   

    </form>
</body>
</html>