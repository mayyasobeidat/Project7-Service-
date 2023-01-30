<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AdminUsersDelete.aspx.cs" Inherits="Project7.AdminUsersDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .batool{
            font-family:'Times New Roman';
            font-weight:bold;
            font-size:large;
            
        }
        .title{
font-family:'Times New Roman';
            font-weight:bold;
            font-size:x-large;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="main-panel">
          <div class="content-wrapper">
              <div style="margin-left:20%">
                   <asp:Label ID="Label2" runat="server" Text="Delete Users" style="margin-left:35% ;margin-bottom:20px" CssClass="title"></asp:Label>
                 <br />
                  <br />
  <!-- Email input -->
  <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">User Name :</label>
     <asp:Label ID="Label3" runat="server" Text="Label" class="form-label batool"></asp:Label>
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">Email :</label>
        
     <asp:Label ID="Label4" runat="server" Text="Label" class="form-label batool"></asp:Label>
  
    
  </div>

<div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">Phone Number :</label>
        
     <asp:Label ID="Label5" runat="server" Text="Label" class="form-label batool"></asp:Label>
  
    
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
   
      <!-- Simple link -->
    
    </div>
  </div>

  <!-- Submit button -->

  <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="background-color:darkorange !important; color:white"  />

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
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Perfect Working',
                text: 'Your Category has been succesfully added',
                type: 'success'
            });
        }

        function successaler() {
            swal({
                title: 'Perfect Working',
                text: 'Your Category has been succesfully deleted',
                type: 'success'
            });
        }
        function successale() {
            swal({
                title: 'Perfect Working',
                text: 'Your Category has been succesfully updated',
                type: 'success'
            });
        }
        window.setTimeout(function () {
            window.location.href = 'AdminUsers.aspx';
        }, 2000);
    </script>
        <script>
            function ShowMessage() {
                //alert('You cannot delete a user because he took/Donate a book before');
                successale();
                setTimeout();

            }
        </script>
</asp:Content>
