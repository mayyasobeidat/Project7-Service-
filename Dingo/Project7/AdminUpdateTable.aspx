<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AdminUpdateTable.aspx.cs" Inherits="Project7.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="main-panel">
          <div class="content-wrapper">
              <div>
  <!-- Email input -->
                  <h2 style="text-align:center">Edit Table</h2>
                  <br />
                  <br />
                   <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">Number of Tables :</label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
 
   
  </div>
  <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">Capacity</label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">Reserved or Yet</label>
        
      <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left:10px" AutoPostBack="True">
          <asp:ListItem Value="1">Reserved</asp:ListItem>
          <asp:ListItem Value="0">Not Reserved</asp:ListItem>
      </asp:DropDownList>
  
    
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

  <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="background-color:darkorange !important; color:white"  />

  <!-- Register buttons -->
  <div class="text-center">
   
      <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
   
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
                text: 'Your Table has been succesfully updated',
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
