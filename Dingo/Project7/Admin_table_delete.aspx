<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Admin_table_delete.aspx.cs" Inherits="Project7.Admin_table_delete" %>
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
     <div class="main-panel">
          <div class="content-wrapper">
              <h2 style="text-align:center">Delete Table</h2>
              <div style=" margin-top:20px">
                  <!-- Email input -->
  <div class="form-outline mb-4" style="margin-top:50px">
       <label class="form-label batool" for="form2Example1">Capacity :</label>
      <asp:Label ID="Label2" runat="server" Text="Label" class="form-label batool"></asp:Label>
     
 
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <label class="form-label batool" for="form2Example2">Status (Reserverd or Yet) :</label>
         <asp:Label ID="Label3" runat="server" Text="Label" class="form-label batool"></asp:Label>
      
  
    
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
</asp:Content>
