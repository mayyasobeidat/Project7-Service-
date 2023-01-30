<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="buffet.aspx.cs" Inherits="Project7.buffet_menu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div class="main-panel">
        <div class="content-wrapper">
            <h2 style="text-align:center" >Buffet</h2>
            <br />
           <br />
            <style>
                /* .drop{
                     background-color:darkorange !important; color:white
                  }*/
                .mmoath {
                    display: flex;
                }
                .reject{
    color: white;
    background-color: red;
    padding: 4px;
    border: 3px solid red;
    text-decoration: none;
    border-radius: 7px;
    font-weight: bolder;
}
                .reject:hover{
        opacity:0.5;
        color:white;
    }
            </style>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
                        <div class="row">
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Choose a buffet</h4>
                    
                      <div class="form-group">
                        <asp:DropDownList  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control drop" ID="DropDownList1" runat="server"></asp:DropDownList>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
                      </div>
                     
                       <div class="form-group">
                       <div class="calendar container">

                        <asp:Calendar ID="Calendar1"  SelectedDayStyle-CssClass="reject" CssClass="table" runat="server"  OnSelectionChanged="Calendar1_SelectionChanged" ValidateRequestMode="Enabled"></asp:Calendar>

                    </div> </div>
                     
                   
                  </div>
                </div>
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">you can add a meals here</h4>
                     <div class="form-group row">
                         
                                <asp:DropDownList  CssClass="form-control drop" ID="DropDownList3" runat="server"></asp:DropDownList>
                            <asp:Button class="btn btn-block btn-lg mt-4" Style="background-color: darkorange !important; color: white" ID="Button2" Width="200" runat="server" Text="Add this meal" OnClick="Button2_Click" />
                     
                       </div>
                      <div class="form-group row">
                    <asp:GridView ID="GridView1" AutoGenerateColumns="False"   class=" container auto-style1 table table-striped" runat="server" >
                        <Columns>
                            <asp:BoundField DataField="nameProduct" HeaderText="Meal" />
                            <asp:BoundField DataField="description" HeaderText="Description" />
                            <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            </asp:ImageField>
                            <asp:HyperLinkField DataNavigateUrlFields="ids" ControlStyle-CssClass="reject" DataNavigateUrlFormatString="buffet.aspx?id={0}" HeaderText="Delete" Text="Delete" >
                            <ControlStyle CssClass="reject" />
                            </asp:HyperLinkField>
                           
                     </Columns>
                    </asp:GridView>
                      </div>
                      </div>
                    
                  
                    
                   
                  </div>
                </div>
              </div>
            
            </div>
 </ContentTemplate> </asp:UpdatePanel>
             
          











        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js" integrity="sha256-Y16qmk55km4bhE/z6etpTsUnfIHqh95qR4al28kAPEU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css" integrity="sha256-sWZjHQiY9fvheUAOoxrszw9Wphl3zqfVaz1kZKEvot8=" crossorigin="anonymous">
    <script>
        function ConfirmDelete() {
            event.preventDefault();
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.value) {
                    // Get the unique ID of the selected row
                    var rowId = $(event.target).closest("tr").find("input[id$='RowIdHiddenField']").val();
                    __doPostBack("DeleteButton", rowId);
                    return true;
                } else {
                    return false;
                }
            });
      <%--      event.preventDefault();
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.value) {
                    // Get the unique ID of the selected row
                    var rowId = $(event.target).closest("tr").data("id");
                    // Send an AJAX request to the server to delete the row
                    $.ajax({
                        type: "POST",
                        url: "YourPageName.aspx/DeleteRow",
                        data: JSON.stringify({ id: rowId }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            if (response.d) {
                                // If the delete was successful, refresh the gridview
                                $("#<%=GridView1.ClientID%>").data("kendoGrid").dataSource.read();
                        $("#<%=GridView1.ClientID%>").data("kendoGrid").refresh();
                    }
                },
                failure: function (response) {
                    // If the delete failed, show an error message
                    Swal.fire({
                        title: 'Error',
                        text: response.d,
                        type: 'error',
                        confirmButtonText: 'OK'
                    });
                }
            });
            return true;
        } else {
            return false;
        }
    });--%>
        }


        function ConfirmDelete1() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'you cannot select a date before today, the date will be adjusted to the current date.',
             
            })
            }
    </script>

</asp:Content>