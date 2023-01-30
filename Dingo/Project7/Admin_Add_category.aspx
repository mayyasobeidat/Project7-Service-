<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Admin_Add_category.aspx.cs" Inherits="Project7.Admin_Add_category" %>
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
                  <h2 style="text-align:center">Add Category</h2>
  <div class="form-outline mb-4">
       <label class="form-label" for="form2Example1">Category Name :</label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">Image</label>
        
     <%-- <asp:Image ID="Image1" runat="server" ImageUrl="" />--%>
      <asp:FileUpload ID="FileUpload1" runat="server" accrpt=".jpg,.png,.jpeg" />
    
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

  <asp:Button ID="Button1" runat="server" Text="Add Category" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="background-color:darkorange !important; color:white"   />

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
    <script type="text/javascript">
        function successale() {
            swal({
                title: 'Perfect Working',
                text: 'Your Category has been succesfully added',
                type: 'success'
            });
        }
        window.setTimeout(function () {
            window.location.href = 'Admin_category.aspx';
        }, 8000);
    </script>
        <script>
            function ShowMessage() {
                //alert('You cannot delete a user because he took/Donate a book before');
                successale();
                setTimeout();

            }
        </script>      

               
                
   
</asp:Content>
