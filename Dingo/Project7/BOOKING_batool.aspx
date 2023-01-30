<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BOOKING_batool.aspx.cs" Inherits="Project7.BOOKING_batool" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
    <style>
        .allDivs{
            background-image:url("/img/background.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            }
        
        .labelss{display:none;}

        .divCalendar{
            background-color:white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap:3px;
            padding:30px;
            }

        .calendar{top: 70px; left: 210px;}
        
        .row.justify-content-center {
            height: 85vh;
            display: flex;
            align-items: center;
            }
        
        .form-control{width:200px;}
        
        .calll{
            display:flex;
            align-items: center;
            justify-content: center;
            }
        
        .texttbox{width: 165px;}
        
        .bttnn{
            width: 100px;
            background-color: #ff6426;
            color: white;
            }

        @media screen and (min-device-width: 481px) and (max-device-width : 768px) {

              .divCalendar {flex-direction: column;}
              
              .row.justify-content-center {padding:100px; align-items:start;}
             
              .calendar{top: 70px; left: 5px;}
              
              }

        @media screen and (min-device-width: 0px) and (max-device-width : 480px) {

            .divCalendar {flex-direction: column;}

            .row.justify-content-center {padding:100px; align-items:start;}
            
            .calendar{top: 70px; left: 5px;}
            
            }
        
        </style>
    
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
    
    
    <div class="allDivs">
       
          
        <div class="container">
            
            <div class="row justify-content-center">

                <div class="col-sm-6">

                    
                    <div class="form-group" style="background-color: white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); position: absolute; left: 50%; transform: translateX(-50%);">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <div class="divCalendar">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                    <div class="form-control calll">
                                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="texttbox"></asp:TextBox>
                                        <asp:ImageButton ID="btnDOB" runat="server" ImageUrl="~/img/food_menu/calendar.png"  Width="30px" OnClick="btnDOB_Click1"  />
                                    </div>
                                    
                                    <asp:Calendar ID="Calendar1" runat="server" CssClass="calendar" backcolor="#ffffff" daynameformat="firsttwoletters" font-names="Arial" font-size="12px" height="200px" nextprevformat="shortmonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" width="250px">
                                        <TodayDayStyle BackColor="Black" ForeColor="White" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="12px" ForeColor="#333333" />
                                        <DayHeaderStyle Font-Bold="True" Font-Size="12px" />
                                        <TitleStyle  Font-Bold="True" Font-Size="14px" ForeColor="#000055" />
                                        <OtherMonthDayStyle ForeColor="#CCCCCC"  />
                                    </asp:Calendar>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book" CssClass="form-control bttnn" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div class="labelss">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>  
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>   
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>   
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <script type="text/javascript">
                 function successalert() {
                     swal({
                         title: 'Warning',
                         text: 'You need to pay to confirm your booking',
                         type: 'warning'
                     });
                 }

                 function successaler() {
                     swal({
                         title: 'Warning',
                         text: 'You cant book at this table at this time',
                         type: 'warning'
                     });
                 }
                 
                
             </script>
        <script>
            function ShowMessage() {
                //alert('You cannot delete a user because he took/Donate a book before');
                successale();
                setTimeout();

            }
        </script>
          
    <script>
        function deleletconfig() {


            //if (confirm(msg)) {
                

            var del = confirm("Are you sure you want to confirm this booking?");
            if (del == true) {
                window.location.href = "Payment.aspx";
            } else {
                window.location.href = "BOOKING_batool.aspx";
            }
            return del;
        }
    </script>

</asp:Content>
