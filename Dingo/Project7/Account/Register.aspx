<%@ Page Title="Register" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project7.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
    .w-100 {
    width: 85% !important;
}
    .my-custom-class input[type="radio"] {
    /* Add your custom styles here */
    background-color: #f1f1f1;
    padding: 10px;
    border-radius: 9px ;
    border: 5px solid blue;
}
    .my-custom-class label {
    /* Add your custom styles here */
    font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
    .my-custom-class{
    /* Add your custom styles here */
    display: inline-block;
  
}
    .mb-4 {
    margin-bottom: 0.7rem !important;
}
        .table {
            --bs-table-color: var(--bs-body-color);
            --bs-table-bg: transparent;
            --bs-table-border-color: #dee2e600;
        }
   /* .moath2{
        height:95vh;
    }*/
   #bigcontainer{
       display:flex;
       justify-content:center;
   }

            .btn-primary {
                      background-color:#ff6428;
                      --bs-btn-border-color:rgba(255, 100, 40, 1);
                        --bs-btn-hover-bg:#af441a!important;
                      --bs-btn-active-bg:#af5835!important;
                      
                      }
                      .btn-link {
                      color:#ff6428;
                    
                      
                      }
                   
  </style>
   <!-- Section: Design Block -->
   
<section class="text-center text-lg-start">
  

  <!-- Jumbotron -->
   
  <div class="container py-4">
    <div class="row g-0 align-items-center" id="bigcontainer">
      <div class="col-lg-4  mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign up now</h2>

              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <label class="form-label" for="FullName">Full Name</label>
                        <asp:TextBox runat="server" ID="FullName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FullName"
                    CssClass="text-danger" ErrorMessage="*" />
                   
                  </div>
                </div>
                <div class="col-md-6 mb-4 ">
                  <div class="form-outline">
                    <label class="form-label" for="Email">Email </label>
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="*" />
                   
                  </div>
                </div>
              </div>

                 <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <label class="form-label" for="Password">Password</label>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="*" />
                  </div>
                </div>
                <div class="col-md-6 mb-4 ">
                  <div class="form-outline">
                   <label class="form-label" for="ConfirmPassword">Confirm Password</label>
                     <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="*" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="*" />
                   
                  </div>
                </div>
              </div>
                 <style>
             

                      
                  </style>
            
               <div class="form-outline mb-4">
                     <label class="form-label" for="Phone">Phone Number</label>
                       <asp:TextBox runat="server" ID="PhoneNumber" CssClass="form-control" TextMode="Number"  />
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                    CssClass="text-danger" ErrorMessage="*" />
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="*" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
          
               </div>
                            <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                <label class="form-check-label" for="form2Example33">Remmember me</label>            
              </div>

              <!-- Submit button -->
              <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary btn-block mb-4" />
            

              <!-- Register buttons -->
              <!-- Checkbox -->
               <p>Already have an account on Edraak?<a href="Login.aspx">Login</a></p>


            
             <%-- <div class="text-center">
                <p>or sign up with:</p>
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
              </div>--%>
           
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <img src="img/signin.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
   
 
   



   

</asp:Content>
