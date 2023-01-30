<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Admin_add_table.aspx.cs" Inherits="Project7.Admin_add_table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="main-panel">
          <div class="content-wrapper">

              <div style="margin-left:10%">
                                     <asp:Label ID="Label1" runat="server" Text="Add Table " style="margin-left:35% ;margin-bottom:20px" CssClass="title"></asp:Label>

                  <br />
                  <br />
  <!-- Email input -->
                  <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">-Number of Tables :</label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="please enter number"></asp:TextBox>
 
   
  </div>


  <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">-Capacity :</label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="2 to 5 Persons"></asp:TextBox>
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">-Status(Reserved or Yet)</label>
       
      <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control" AutoPostBack="True">
          <asp:ListItem Value="1">Reserved</asp:ListItem>
          <asp:ListItem Value="0">Not Reserved (Yet)</asp:ListItem>
      </asp:RadioButtonList>
  
    
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">
     
      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
    
    </div>
  </div>

  <!-- Submit button -->

  <asp:Button ID="Button1" runat="server" Text="Add Table" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="background-color:darkorange !important; color:white"  />

  <!-- Register buttons -->
  <div class="text-center">
   
      
   
    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div></div>
              </div>
         </div>
   <script>
    function successale() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your table has been succesfully added',
                         type: 'success'
                     });
                 }
                 window.setTimeout(function () {
                     window.location.href = 'AdminTable.aspx';;
                 }, 9000);
             </script>
        <script>
            function ShowMessage() {
                //alert('You cannot delete a user because he took/Donate a book before');
                successale();
                setTimeout();

            }
        </script>

</asp:Content>
