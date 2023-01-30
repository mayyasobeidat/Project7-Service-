<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Project7.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        .cancel{
                color: #ff6426;
    background-color: #fff;
    border: 2px solid #ff6426;
        padding: 9.5px 28px;
    border-radius: 50px;
    font-size: 14px;
    font-weight: 400;
        color: #000;

        }
        .cancel:hover{
            display: inline-block;
    padding: 9.5px 28px;
    border-radius: 50px;
    background-color: #ff6426;
    font-size: 14px;
    font-weight: 400;
    color: #fff;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    text-transform: capitalize;
    border: 2px solid transparent;
        }
    </style>
    <section style="background-color: #eee;">
  <div class="container my-5 py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body">
            <div class="d-flex flex-start align-items-center" >
             
              <div>

               
             <h6 class="fw-bold text-primary mb-1" id="name" runat="server">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textAreaExample" ErrorMessage="RequiredFieldValidator" ValidationGroup="comments"></asp:RequiredFieldValidator>
                  </h6>
              </div>
            </div>
              <div id="comments" runat="server">
            

        </div>
          <div class="card-footer py-3 border-0" style="background-color: #f8f9fa;">
            <div class="d-flex flex-start w-100">
              
              <div class="form-outline w-100">
                <textarea class="form-control" id="textAreaExample" rows="4"
                  style="background: #fff;" runat="server"></textarea>
                <label class="form-label" for="textAreaExample">Message</label>
              </div>
            </div>
           
            <div class="float-end mt-2 pt-1">
                <asp:Button ID="btncomment" class="single_page_btn" runat="server" Text="Post comment" OnClick="btncomment_Click"   ValidationGroup="comments" />
              <asp:Button ID="Cancel" class="cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" />

            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"> </script>
    <script language='javascript'>
        function successalert(msg) {
            swal({
                title: 'Congratulations!',
                text: msg,
                type: 'success'
            });
        }

    </script>

</asp:Content>
