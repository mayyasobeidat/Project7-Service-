<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="admin_category_delete.aspx.cs" Inherits="Project7.admin_category_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

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
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="main-panel">
          <div class="content-wrapper">
              <div style=" margin-top:20px">
                   <asp:Label ID="Label1" runat="server" Text="Delete Category" style="margin-left:35% ;margin-bottom:20px" CssClass="title"></asp:Label>
                  <!-- Email input -->
  <div class="form-outline mb-4" style="margin-top:50px">
       <label class="form-label batool" for="form2Example1">Category Name :</label>
      <asp:Label ID="Label2" runat="server" Text="Label" class="form-label batool"></asp:Label>
     
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label batool" for="form2Example2">Image</label>
      <asp:Image ID="Image1" runat="server" class="form-label batool" ImageUrl="" Width="50px" Height="50px" />
        
      
  
    
  </div>

  <!-- 2 column grid layout for inline styling -->
  

  <!-- Submit button -->

  <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-primary btn-block mb-4" OnClick="Button1_Click" style="background-color:darkorange !important; color:white"  />

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
  </div>
                  </div>
              </div>
         </div>

    <%-- <script type="text/javascript">
         function successalert() {
             swal({
                 title: 'Warning!',
                 text: 'You can not delete this category because it have products',
                 type: 'success'
             });
         }

         function successaler() {
             swal({
                 title: 'Correct!',
                 text: 'Your category is deleted successfully',
                 type: 'success'
             });
         }

     </script>--%>

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
                 text: 'Your Category has been succesfully deleted',
                 type: 'success'
             });
         }
         function successalert() {
             swal({
                 title: 'Warning !',
                 text: 'you cant delete this category because it have products',
                 type: 'warning'
             });
         }
         window.setTimeout(function () {
             window.location.href = 'Admin_category.aspx';;
         }, 5000);
     </script>
        <script>
            function ShowMessage() {
                //alert('You cannot delete a user because he took/Donate a book before');
                successale();
                setTimeout();

            }
        </script>
</asp:Content>
